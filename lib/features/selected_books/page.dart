import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/components/selected_books_list_tile.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:book_picker/features/selected_books/components/selected_books_appbar.dart';
import 'package:book_picker/features/selected_books/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

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
                ? Center(
                    child: Column(
                      children: [
                        //TODO:LOttie
                        const Text('本が登録されていないようです…\n読みたい本を登録しましょう！'),
                        PrimaryButton(
                          text: 'ページを更新',
                          onPressed: () async => ref
                              .read(
                                selectedBooksPageViewModelProvider(bookListType)
                                    .notifier,
                              )
                              .refreshBookList(bookListType),
                        ),
                      ],
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: () async => ref
                        .read(
                          SelectedBooksPageViewModelProvider(bookListType)
                              .notifier,
                        )
                        .refreshBookList(bookListType),
                    child: ListView.builder(
                      itemCount: data.storingBooks.length,
                      itemBuilder: (context, index) {
                        final Book bookData = data.storingBooks[index];
                        final bool isCanSelect =
                            !data.userStoringBooks.contains(bookData.isbn);
                        return SelectedBooksListTile(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookInfoPage(
                                  book: data.storingBooks[index],
                                ),
                              ),
                            );
                          },
                          selectBook: () async {
                            await ref
                                .read(
                                  selectedBooksPageViewModelProvider(
                                          bookListType)
                                      .notifier,
                                )
                                .storePickedBook(bookData);
                          },
                          isCanSelect: isCanSelect,
                          title: bookData.title,
                          author: bookData.author,
                          imageUrl: bookData.imageUrl,
                          day: data.storingBooks[index].storedTime != null
                              ? DateFormat('yyyy年MM月dd日')
                                  .format(data.storingBooks[index].storedTime!)
                              : 'No date available',
                        );
                      },
                    ),
                  ),
          ),
        );
      },
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const LoadingPage(),
    );
  }
}
