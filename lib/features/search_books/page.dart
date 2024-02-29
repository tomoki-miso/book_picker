import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/features/search_books/components/search_text_field.dart';
import 'package:book_picker/features/search_books/components/searched_books_list.dart';
import 'package:book_picker/features/search_books/components/select_book_floating_button.dart';
import 'package:book_picker/features/search_books/components/when_keyword_is_null.dart';
import 'package:book_picker/features/search_books/components/when_search_book_is_null.dart';
import 'package:book_picker/features/search_books/search_type.dart';
import 'package:book_picker/features/search_books/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBooksPage extends ConsumerWidget {
  const SearchBooksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchBookViewModelProvider);
    return state.when(
      data: (data) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: const OriginalAppBar(),
        body: BackGround(
          child: Column(
            children: [
              /// 検索欄
              SearchTextField(
                searchType: data.searchType,
                controller: data.searchWordController,
                onChanged: (department) async {
                  await ref
                      .read(searchBookViewModelProvider.notifier)
                      .typeKeyword();
                },
                onSubmitted: (department) async {
                  if (data.searchType == SearchType.title) {
                    await ref
                        .read(searchBookViewModelProvider.notifier)
                        .searchBooksByTitle(
                          data.searchWordController.text.trim(),
                        );
                  } else if (data.searchType == SearchType.author) {
                    await ref
                        .read(searchBookViewModelProvider.notifier)
                        .searchBooksByAuthor(
                          data.searchWordController.text.trim(),
                        );
                  }
                },
              ),

              /// 検索結果
              if (data.searchWordController.text.trim().isEmpty)

                /// キーワードが入力されていないとき
                const KeywordIsNull()
              else if (data.searchedBooks == null)

                /// 検索結果の本がないとき
                const BookIsNull()
              else

                /// 検索結果のリスト
                Expanded(
                  child: SearchedBooksList(data: data),
                ),
            ],
          ),
        ),
        floatingActionButton: SelectBookFloatingButton(
          buttonText: data.searchType.reverseDisplayName,
          onPressed: () async =>
              ref.read(searchBookViewModelProvider.notifier).switchSearchType(
                    data.searchType,
                    data.searchWordController.text.trim(),
                  ),
        ),
      ),
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const LoadingPage(),
    );
  }
}
