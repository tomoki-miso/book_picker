import 'package:book_picker/components/selected_books_list_tile.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:book_picker/features/selected_books/components/goole_ad_part.dart';
import 'package:book_picker/features/selected_books/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class StoredBooksList extends ConsumerWidget {
  const StoredBooksList(
      {required this.data, required this.bookListType, super.key});

  final data;
  final BookListType bookListType;

  @override
  Widget build(BuildContext context, WidgetRef ref) => ListView.builder(
        itemCount: data.storingBooks.length + (data.storingBooks.length ~/ 5),
        itemBuilder: (context, index) {
          if (index % 6 == 5) {
            return ListAdBanner();
          } else {
            final int bookIndex =
                index - (index ~/ 6); // 広告用インデックスを除いたインデックスを計算
            final Book bookData = data.storingBooks[bookIndex];
            final bool isCanSelect =
                !data.userStoringBooks.contains(bookData.isbn);
            return SelectedBooksListTile(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookInfoPage(
                      book: bookData,
                    ),
                  ),
                );
              },
              selectBook: () async {
                await ref
                    .read(
                      selectedBooksPageViewModelProvider(
                        bookListType,
                      ).notifier,
                    )
                    .storePickedBook(bookData);
              },
              isCanSelect: isCanSelect,
              title: bookData.title,
              author: bookData.author,
              imageUrl: bookData.imageUrl,
              day: bookData.storedTime != null
                  ? DateFormat('yyyy年MM月dd日').format(bookData.storedTime!)
                  : 'No date available',
            );
          }
        },
      );
}
