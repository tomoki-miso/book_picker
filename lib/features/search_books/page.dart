import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/components/selected_books_list_tile.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/search_books/components/search_text_field.dart';
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
        appBar: const OriginalAppBar(),
        body: BackGround(
          child: Column(
            children: [
              /// 検索欄

              SearchTextField(
                controller: data.searchWordController,
                onChanged: (department) async {
                  await ref
                      .read(searchBookViewModelProvider.notifier)
                      .typeKeyword();
                },
                onSubmitted: (department) async {
                  await ref
                      .read(searchBookViewModelProvider.notifier)
                      .searchBooksByKeyword(
                          data.searchWordController.text.trim());
                },
              ),

              /// 検索結果
              if (data.searchedBooks == null)
                const Center(
                  child: Text('本が見つかりませんでした...'),
                )
              else
                Expanded(
                  child: ListView.builder(
                    itemCount: data.searchedBooks!.length,
                    itemBuilder: (context, index) {
                      final Book bookData = data.searchedBooks![index];
                      return SelectedBooksListTile(
                        onTap: () async => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookInfoPage(
                              book: bookData,
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
            ],
          ),
        ),
      ),
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
