import 'package:book_picker/domain/app_ad/domain.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/domain/user/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'state.freezed.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class TopPageState with _$TopPageState {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory TopPageState({
    required List<Book> commonStoringBookOrderByAmount,
    required List<Book> commonStoringBookOrderByTime,
    required List<AppAd> appAds,
    required UserInfoClass user,
    @Default(false) bool isLoading,
    FetchedBook? fetchedBook,
    Book? todaysPickedBook,
  }) = _TopPageState;
}
