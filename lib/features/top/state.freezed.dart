// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopPageState {
  FetchedBook get book => throw _privateConstructorUsedError;
  List<CommonStoringBook> get commonStoringBookOrderByAmount =>
      throw _privateConstructorUsedError;
  List<CommonStoringBook> get commonStoringBookOrderByTime =>
      throw _privateConstructorUsedError;
  TodaysPickedBook? get todaysPickedBook => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopPageStateCopyWith<TopPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPageStateCopyWith<$Res> {
  factory $TopPageStateCopyWith(
          TopPageState value, $Res Function(TopPageState) then) =
      _$TopPageStateCopyWithImpl<$Res, TopPageState>;
  @useResult
  $Res call(
      {FetchedBook book,
      List<CommonStoringBook> commonStoringBookOrderByAmount,
      List<CommonStoringBook> commonStoringBookOrderByTime,
      TodaysPickedBook? todaysPickedBook});

  $FetchedBookCopyWith<$Res> get book;
  $TodaysPickedBookCopyWith<$Res>? get todaysPickedBook;
}

/// @nodoc
class _$TopPageStateCopyWithImpl<$Res, $Val extends TopPageState>
    implements $TopPageStateCopyWith<$Res> {
  _$TopPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? commonStoringBookOrderByAmount = null,
    Object? commonStoringBookOrderByTime = null,
    Object? todaysPickedBook = freezed,
  }) {
    return _then(_value.copyWith(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as FetchedBook,
      commonStoringBookOrderByAmount: null == commonStoringBookOrderByAmount
          ? _value.commonStoringBookOrderByAmount
          : commonStoringBookOrderByAmount // ignore: cast_nullable_to_non_nullable
              as List<CommonStoringBook>,
      commonStoringBookOrderByTime: null == commonStoringBookOrderByTime
          ? _value.commonStoringBookOrderByTime
          : commonStoringBookOrderByTime // ignore: cast_nullable_to_non_nullable
              as List<CommonStoringBook>,
      todaysPickedBook: freezed == todaysPickedBook
          ? _value.todaysPickedBook
          : todaysPickedBook // ignore: cast_nullable_to_non_nullable
              as TodaysPickedBook?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchedBookCopyWith<$Res> get book {
    return $FetchedBookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TodaysPickedBookCopyWith<$Res>? get todaysPickedBook {
    if (_value.todaysPickedBook == null) {
      return null;
    }

    return $TodaysPickedBookCopyWith<$Res>(_value.todaysPickedBook!, (value) {
      return _then(_value.copyWith(todaysPickedBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopPageStateImplCopyWith<$Res>
    implements $TopPageStateCopyWith<$Res> {
  factory _$$TopPageStateImplCopyWith(
          _$TopPageStateImpl value, $Res Function(_$TopPageStateImpl) then) =
      __$$TopPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FetchedBook book,
      List<CommonStoringBook> commonStoringBookOrderByAmount,
      List<CommonStoringBook> commonStoringBookOrderByTime,
      TodaysPickedBook? todaysPickedBook});

  @override
  $FetchedBookCopyWith<$Res> get book;
  @override
  $TodaysPickedBookCopyWith<$Res>? get todaysPickedBook;
}

/// @nodoc
class __$$TopPageStateImplCopyWithImpl<$Res>
    extends _$TopPageStateCopyWithImpl<$Res, _$TopPageStateImpl>
    implements _$$TopPageStateImplCopyWith<$Res> {
  __$$TopPageStateImplCopyWithImpl(
      _$TopPageStateImpl _value, $Res Function(_$TopPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? commonStoringBookOrderByAmount = null,
    Object? commonStoringBookOrderByTime = null,
    Object? todaysPickedBook = freezed,
  }) {
    return _then(_$TopPageStateImpl(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as FetchedBook,
      commonStoringBookOrderByAmount: null == commonStoringBookOrderByAmount
          ? _value._commonStoringBookOrderByAmount
          : commonStoringBookOrderByAmount // ignore: cast_nullable_to_non_nullable
              as List<CommonStoringBook>,
      commonStoringBookOrderByTime: null == commonStoringBookOrderByTime
          ? _value._commonStoringBookOrderByTime
          : commonStoringBookOrderByTime // ignore: cast_nullable_to_non_nullable
              as List<CommonStoringBook>,
      todaysPickedBook: freezed == todaysPickedBook
          ? _value.todaysPickedBook
          : todaysPickedBook // ignore: cast_nullable_to_non_nullable
              as TodaysPickedBook?,
    ));
  }
}

/// @nodoc

class _$TopPageStateImpl implements _TopPageState {
  const _$TopPageStateImpl(
      {required this.book,
      required final List<CommonStoringBook> commonStoringBookOrderByAmount,
      required final List<CommonStoringBook> commonStoringBookOrderByTime,
      this.todaysPickedBook})
      : _commonStoringBookOrderByAmount = commonStoringBookOrderByAmount,
        _commonStoringBookOrderByTime = commonStoringBookOrderByTime;

  @override
  final FetchedBook book;
  final List<CommonStoringBook> _commonStoringBookOrderByAmount;
  @override
  List<CommonStoringBook> get commonStoringBookOrderByAmount {
    if (_commonStoringBookOrderByAmount is EqualUnmodifiableListView)
      return _commonStoringBookOrderByAmount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonStoringBookOrderByAmount);
  }

  final List<CommonStoringBook> _commonStoringBookOrderByTime;
  @override
  List<CommonStoringBook> get commonStoringBookOrderByTime {
    if (_commonStoringBookOrderByTime is EqualUnmodifiableListView)
      return _commonStoringBookOrderByTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonStoringBookOrderByTime);
  }

  @override
  final TodaysPickedBook? todaysPickedBook;

  @override
  String toString() {
    return 'TopPageState(book: $book, commonStoringBookOrderByAmount: $commonStoringBookOrderByAmount, commonStoringBookOrderByTime: $commonStoringBookOrderByTime, todaysPickedBook: $todaysPickedBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPageStateImpl &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(
                other._commonStoringBookOrderByAmount,
                _commonStoringBookOrderByAmount) &&
            const DeepCollectionEquality().equals(
                other._commonStoringBookOrderByTime,
                _commonStoringBookOrderByTime) &&
            (identical(other.todaysPickedBook, todaysPickedBook) ||
                other.todaysPickedBook == todaysPickedBook));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      book,
      const DeepCollectionEquality().hash(_commonStoringBookOrderByAmount),
      const DeepCollectionEquality().hash(_commonStoringBookOrderByTime),
      todaysPickedBook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPageStateImplCopyWith<_$TopPageStateImpl> get copyWith =>
      __$$TopPageStateImplCopyWithImpl<_$TopPageStateImpl>(this, _$identity);
}

abstract class _TopPageState implements TopPageState {
  const factory _TopPageState(
      {required final FetchedBook book,
      required final List<CommonStoringBook> commonStoringBookOrderByAmount,
      required final List<CommonStoringBook> commonStoringBookOrderByTime,
      final TodaysPickedBook? todaysPickedBook}) = _$TopPageStateImpl;

  @override
  FetchedBook get book;
  @override
  List<CommonStoringBook> get commonStoringBookOrderByAmount;
  @override
  List<CommonStoringBook> get commonStoringBookOrderByTime;
  @override
  TodaysPickedBook? get todaysPickedBook;
  @override
  @JsonKey(ignore: true)
  _$$TopPageStateImplCopyWith<_$TopPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
