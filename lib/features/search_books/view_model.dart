import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/features/search_books/state.dart';
import 'package:book_picker/repository/fetched_book/repository.dart';
import 'package:book_picker/repository/keyword/repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class SearchBookViewModel extends _$SearchBookViewModel {
  KeywordRepo get keywordRepo => ref.read(keywordRepoProvider.notifier);
  FetchedBookRepo get fetchedBookRepo =>
      ref.read(fetchedBookRepoProvider.notifier);
  @override
  FutureOr<SearchBookPageState> build() {
    final SearchBookPageState state = SearchBookPageState(
      searchWordController: TextEditingController(),
    );
    return state;
  }

  Future<void> typeKeyword() async {
    final data = state.requireValue;
    state = AsyncData(
      data.copyWith(keyword: data.searchWordController.text.trim()),
    );
    print(data.keyword);
  }

  Future<void> searchBooks(String keyword) async {
    print('start');
    final List<Book> searchedBooks = [];

    for (int index = 0; index < 0; index++) {
      print(index);
      final FetchedBook? fetchedBook =
          await fetchedBookRepo.fetchBookInfoByKeword(keyword, index);
      print(fetchedBook);

      final book = Book(
        isbn: fetchedBook?.isbn,
        title: fetchedBook?.title,
        author: fetchedBook?.author,
        itemCaption: fetchedBook?.itemCaption,
        itemPrice: fetchedBook?.itemPrice,
        imageUrl: fetchedBook?.largeImageUrl,
        publisherName: fetchedBook?.publisherName,
        affiUrl: fetchedBook?.affiUrl,
      );
      searchedBooks.add(book);
    }
    state =
        AsyncData(state.requireValue.copyWith(searchedBooks: searchedBooks));
  }

  Future<void> searchBooksByKeyword(String keyword) async {
    print('start');

    final List<Book> searchedBooks =
        await fetchedBookRepo.fetchBooksListByKeword(keyword);

    state =
        AsyncData(state.requireValue.copyWith(searchedBooks: searchedBooks));
  }

  Future<void> test() async {
    await fetchedBookRepo.fetchBooksListByKeword('python');
  }
}
