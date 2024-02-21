import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/selected_books_list_tile.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:book_picker/features/selected_books/components/selected_books_appbar.dart';
import 'package:book_picker/features/selected_books/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedBooksPage extends ConsumerWidget {
  const SelectedBooksPage({
    required this.bookListType,
    super.key,
  });
  final BookListType bookListType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(SelectedBooksPageViewModelProvider(bookListType));
    return state.when(
      data: (data) => Scaffold(
        appBar: const SelectedBooksAppbar(),
        body: BackGround(
          child: ListView.builder(
            itemCount: data.storingBooks.length,
            itemBuilder: (context, index) {
              final Book bookData = data.storingBooks[index];

              return SelectedBooksListTile(
                onTap: () async => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookInfoPage(
                      book: data.storingBooks[index],
                    ),
                  ),
                ),
                title: bookData.title,
                author: bookData.author,
                imageUrl: bookData.imageUrl,
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () async => ref
                .read(SelectedBooksPageViewModelProvider(bookListType).notifier)
                .setKeywords()),
      ),
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
