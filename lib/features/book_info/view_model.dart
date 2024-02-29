import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/state.dart';
import 'package:book_picker/repository/common_storing_book/repository.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'view_model.g.dart';

@riverpod
class BookInfoPageViewModel extends _$BookInfoPageViewModel {
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);

  CommonStoringBookRepo get commonStoringBookRepo =>
      ref.read(commonStoringBookRepoProvider.notifier);

  @override
  FutureOr<BookInfoPageState> build(
    Book book,
  ) async {
    final bool isCanStoreBook = await _checkIsCanStoreBook(book);

    final BookInfoPageState state =
        BookInfoPageState(book: book, isCanStoreBook: isCanStoreBook);
    return state;
  }

  /// 本を保存できるかチェック
  Future<bool> _checkIsCanStoreBook(Book book) async {
    final List<String?> userStoredBooks =
        await userStoringBookRepo.getUserStoringBooksISBN();

    if (userStoredBooks.contains(book.isbn)) {
      return false;
    } else {
      return true;
    }
  }

  /// ユーザーと全体が本をそれぞれ保存
  Future<void> storeBook() async {
    final bookData = state.requireValue.book;
    await userStoringBookRepo.deletePickedBookUser(bookData);
    await commonStoringBookRepo.storePickedBookCommon(bookData);
    state = AsyncData(state.requireValue.copyWith(isCanStoreBook: false));
  }

  Future<void> deleteBook() async {
    final bookData = state.requireValue.book;
    await userStoringBookRepo.deletePickedBookUser(bookData);
    await commonStoringBookRepo.deletePickedBookCommon(bookData);
    state = AsyncData(state.requireValue.copyWith(isCanStoreBook: true));
  }

  /// Widgetを画像へ変換
  Future<ByteData?> _exportWidgetToImage(GlobalKey globalKey) async {
    final boundary =
        globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    final image = await boundary.toImage(
      pixelRatio: 3,
    );
    final byteData = await image.toByteData(
      format: ImageByteFormat.png,
    );
    return byteData;
  }

  /// 画像をローカルパスに保存
  Future<File> _getApplicationDocumentsFile(
    String text,
    List<int> imageData,
  ) async {
    final directory = await getApplicationDocumentsDirectory();

    final exportFile = File('${directory.path}/$text.png');
    if (!(await exportFile.exists())) {
      // ファイルが存在しない場合は作成します。
      await exportFile.create(recursive: true);
    }
    // 画像データをファイルに書き込みます。
    final file = await exportFile.writeAsBytes(imageData);
    return file;
  }

  /// Widget画像をシェアする
  Future<void> shareWidgetImage({
    required GlobalKey globalKey,
    required String bookName,
  }) async {
    // logger.trace();
    // globalKeyからWidgetを画像へ変換
    final byteData = await _exportWidgetToImage(globalKey);
    if (byteData == null) {
      return;
    }
    // 画像をUint8Listへ変換
    final widgetImageBytes = byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    // 画像をローカルパスに保存
    final applicationDocumentsFile = await _getApplicationDocumentsFile(
      globalKey.toString(),
      widgetImageBytes,
    );
    final path = applicationDocumentsFile.path;
    final File imageFile = File(path);
    final List<int> imageBytes = await imageFile.readAsBytes();
    final buffer = Uint8List.fromList(imageBytes).buffer;

// 画像をシェア
    await Share.shareXFiles(
      [
        XFile.fromData(
          buffer.asUint8List(),
          name: 'book_info_image.png',
          mimeType: 'image/png',
        ),
      ],
      subject: 'Book Information',
      text: '$bookNameを「ブクピク」で見つけました！\n今度読んでみようかな〜\n#本を探すならブクピク！',
    );
  }
}
