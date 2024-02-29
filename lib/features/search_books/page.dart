import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/components/selected_books_list_tile.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/search_books/components/goole_ad_part.dart';
import 'package:book_picker/features/search_books/components/search_text_field.dart';
import 'package:book_picker/features/search_books/search_type.dart';
import 'package:book_picker/features/search_books/view_model.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

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
                Padding(
                  padding: const EdgeInsets.all(kDefaultSize * 2)
                      .copyWith(top: kDefaultPadding * 2),
                  child: GrassContainer(
                    width: 1,
                    height: 0.4,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        const Text(
                          'キーワードを入力して本を探しましょう！',
                          style: Styles.bookAuthorStyle,
                        ),
                        SizedBox(
                          height: 300,
                          child: Lottie.asset('assets/lottie/cat_tama.json'),
                        ),
                      ],
                    ),
                  ),
                )
              else if (data.searchedBooks == null)
                Padding(
                  padding: const EdgeInsets.all(kDefaultSize * 2)
                      .copyWith(top: kDefaultPadding * 2),
                  child: GrassContainer(
                    width: 1,
                    height: 0.4,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        const Text(
                          '本が見つかりませんでした.........',
                          style: Styles.bookAuthorStyle,
                        ),
                        SizedBox(
                          height: 300,
                          child: Lottie.asset('assets/lottie/cat_sleep.json'),
                        ),
                      ],
                    ),
                  ),
                )
              else
                Expanded(
                  child: ListView.builder(
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
                          onTap: () => Navigator.push(
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
                  ),
                ),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: PrimaryButton(
            isWithWidget: true,
            onPressed: () async {
              await ref
                  .read(searchBookViewModelProvider.notifier)
                  .switchSearchType(
                    data.searchType,
                    data.searchWordController.text.trim(),
                  );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.search),
                const SizedBox(
                  width: kDefaultSize * 2,
                ),
                Text(data.searchType.reverseDisplayName),
              ],
            ),
          ),
        ),
      ),
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const LoadingPage(),
    );
  }
}
