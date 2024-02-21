import 'package:book_picker/domain/book/domain.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'state.freezed.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class SearchBookPageState with _$SearchBookPageState {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory SearchBookPageState({
    required TextEditingController searchWordController,
    String? keyword,
    List<Book>? searchedBooks,
  }) = _SearchBookPageState;
}
