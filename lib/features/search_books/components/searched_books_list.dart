import 'package:book_picker/components/selected_books_list_tile.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/search_books/components/goole_ad_part.dart';
import 'package:book_picker/features/search_books/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchedBooksList extends ConsumerWidget {
  const SearchedBooksList({required this.data, super.key});

  final data;

  @override
  Widget build(BuildContext context, WidgetRef ref) => ListView.builder(
        itemCount: data.searchedBooks!.length +
            (data.searchedBooks!.length ~/ 5), // 広告用の追加数
        itemBuilder: (context, index) {
          if (index % 6 == 5) {
            // インデックスが5の倍数の場合に広告を挿入
            return SearchAdBanner(); // 広告ウィジェットを適切に置き換えてください
          } else {
            final int bookIndex =
                index - (index ~/ 6); // 広告用インデックスを除いたインデックスを計算
            final Book bookData = data.searchedBooks![bookIndex];
            final bool isCanSelect =
                !data.userStoringBooks.contains(bookData.isbn);
            return SelectedBooksListTile(
              displayStoredTime: false,
              onTap: () async => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookInfoPage(
                    book: bookData,
                  ),
                ),
              ),
              selectBook: () async {
                await ref
                    .read(searchBookViewModelProvider.notifier)
                    .storePickedBook(bookData);
              },
              isCanSelect: isCanSelect,
              title: bookData.title,
              author: bookData.author,
              imageUrl: bookData.imageUrl,
            );
          }
        },
      );
}
