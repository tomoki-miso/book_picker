import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/features/selected_books/book_list_type.dart';
import 'package:book_picker/features/selected_books/components/selected_books_appbar.dart';
import 'package:book_picker/features/selected_books/components/stored_books_list.dart';
import 'package:book_picker/features/selected_books/components/when_storing_book_is_null.dart';
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
    final state = ref.watch(selectedBooksPageViewModelProvider(bookListType));
    return state.when(
      data: (data) {
        final bool isWithSearch =
            data.bookListType == BookListType.userStoringBooks;
        return Scaffold(
          appBar: SelectedBooksAppbar(
            isWithSearch: isWithSearch,
            onPressed: () async => ref
                .read(selectedBooksPageViewModelProvider(bookListType).notifier)
                .refreshBookList(bookListType),
          ),
          body: BackGround(
            child: data.storingBooks.isEmpty

                /// 本が保存されていないとき
                ? StoringBookIsNull(
                    reloadPage: () async => ref
                        .read(selectedBooksPageViewModelProvider(bookListType)
                            .notifier)
                        .refreshBookList(bookListType),
                  )
                : RefreshIndicator(
                    onRefresh: () async => ref
                        .read(
                          SelectedBooksPageViewModelProvider(bookListType)
                              .notifier,
                        )
                        .refreshBookList(bookListType),
                    child:
                        StoredBooksList(data: data, bookListType: bookListType),
                  ),
          ),
        );
      },
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const LoadingPage(),
    );
  }
}
