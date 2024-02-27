import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/search_books/search_type.dart';
import 'package:book_picker/features/search_books/state.dart';
import 'package:book_picker/repository/common_storing_book/repository.dart';
import 'package:book_picker/repository/fetched_book/repository.dart';
import 'package:book_picker/repository/keyword/repository.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class SearchBookViewModel extends _$SearchBookViewModel {
  KeywordRepo get keywordRepo => ref.read(keywordRepoProvider.notifier);
  FetchedBookRepo get fetchedBookRepo =>
      ref.read(fetchedBookRepoProvider.notifier);
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);
  CommonStoringBookRepo get commonStoringBookRepo =>
      ref.read(commonStoringBookRepoProvider.notifier);

  @override
  FutureOr<SearchBookPageState> build() async {
    final List<String?> userStoringBooks =
        await userStoringBookRepo.getUserStoringBooksISBN();
    final SearchBookPageState state = SearchBookPageState(
      searchType: SearchType.title,
      searchWordController: TextEditingController(),
      userStoringBooks: userStoringBooks,
    );
    return state;
  }

  /// 文字入力
  Future<void> typeKeyword() async {
    final data = state.requireValue;
    state = AsyncData(
      data.copyWith(keyword: data.searchWordController.text.trim()),
    );
    print(data.keyword);
  }

  /// タイトルで検索

  Future<void> searchBooksByTitle(String keyword) async {
    final List<Book> searchedBooks =
        await fetchedBookRepo.fetchBooksListByKeword(keyword);
    await keywordRepo.setKeyword(keyword);

    state =
        AsyncData(state.requireValue.copyWith(searchedBooks: searchedBooks));
  }

  /// 著者名検索

  Future<void> searchBooksByAuthor(String keyword) async {
    final List<Book> searchedBooks =
        await fetchedBookRepo.fetchBooksListByAuthor(keyword);
    await keywordRepo.setKeyword(keyword);

    state =
        AsyncData(state.requireValue.copyWith(searchedBooks: searchedBooks));
  }

  /// 検索方法切り替え
  Future<void> switchSearchType(SearchType searchType, String keyword) async {
    if (searchType == SearchType.title) {
      state =
          AsyncData(state.requireValue.copyWith(searchType: SearchType.author));
      await searchBooksByAuthor(keyword);
    }
    if (searchType == SearchType.author) {
      state =
          AsyncData(state.requireValue.copyWith(searchType: SearchType.title));
      await searchBooksByTitle(keyword);
    }
  }

  /// 本を保存できるか確認
  Future<bool> checkIsCanStoreBook(Book book) async {
    final List<String?> userStoredBooks =
        await userStoringBookRepo.getUserStoringBooksISBN();
    print(userStoredBooks);

    if (userStoredBooks.contains(book.isbn)) {
      return false;
    } else {
      return true;
    }
  }

  /// 本をアーカイブ（セレクト）
  Future<void> storePickedBook(Book book) async {
    print(state.requireValue.userStoringBooks);
    // ユーザーの本と一般的な本をそれぞれ保存
    await userStoringBookRepo.storePickedBookUser(book);
    await commonStoringBookRepo.storePickedBookCommon(book);
    final List<String?> userStoringBook = [
      ...await userStoringBookRepo.getUserStoringBooksISBN(),
      book.isbn,
    ];
    state = AsyncData(
      state.requireValue.copyWith(userStoringBooks: userStoringBook),
    );
    print(state.requireValue.userStoringBooks);
  }
}
