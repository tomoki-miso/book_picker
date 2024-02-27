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
mixin _$BookInfoPageState {
  Book get book => throw _privateConstructorUsedError;
  bool get isCanStoreBook => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookInfoPageStateCopyWith<BookInfoPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookInfoPageStateCopyWith<$Res> {
  factory $BookInfoPageStateCopyWith(
          BookInfoPageState value, $Res Function(BookInfoPageState) then) =
      _$BookInfoPageStateCopyWithImpl<$Res, BookInfoPageState>;
  @useResult
  $Res call({Book book, bool isCanStoreBook});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$BookInfoPageStateCopyWithImpl<$Res, $Val extends BookInfoPageState>
    implements $BookInfoPageStateCopyWith<$Res> {
  _$BookInfoPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? isCanStoreBook = null,
  }) {
    return _then(_value.copyWith(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      isCanStoreBook: null == isCanStoreBook
          ? _value.isCanStoreBook
          : isCanStoreBook // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookInfoPageStateImplCopyWith<$Res>
    implements $BookInfoPageStateCopyWith<$Res> {
  factory _$$BookInfoPageStateImplCopyWith(_$BookInfoPageStateImpl value,
          $Res Function(_$BookInfoPageStateImpl) then) =
      __$$BookInfoPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book, bool isCanStoreBook});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$BookInfoPageStateImplCopyWithImpl<$Res>
    extends _$BookInfoPageStateCopyWithImpl<$Res, _$BookInfoPageStateImpl>
    implements _$$BookInfoPageStateImplCopyWith<$Res> {
  __$$BookInfoPageStateImplCopyWithImpl(_$BookInfoPageStateImpl _value,
      $Res Function(_$BookInfoPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? isCanStoreBook = null,
  }) {
    return _then(_$BookInfoPageStateImpl(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      isCanStoreBook: null == isCanStoreBook
          ? _value.isCanStoreBook
          : isCanStoreBook // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookInfoPageStateImpl implements _BookInfoPageState {
  const _$BookInfoPageStateImpl(
      {required this.book, required this.isCanStoreBook});

  @override
  final Book book;
  @override
  final bool isCanStoreBook;

  @override
  String toString() {
    return 'BookInfoPageState(book: $book, isCanStoreBook: $isCanStoreBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookInfoPageStateImpl &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.isCanStoreBook, isCanStoreBook) ||
                other.isCanStoreBook == isCanStoreBook));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book, isCanStoreBook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookInfoPageStateImplCopyWith<_$BookInfoPageStateImpl> get copyWith =>
      __$$BookInfoPageStateImplCopyWithImpl<_$BookInfoPageStateImpl>(
          this, _$identity);
}

abstract class _BookInfoPageState implements BookInfoPageState {
  const factory _BookInfoPageState(
      {required final Book book,
      required final bool isCanStoreBook}) = _$BookInfoPageStateImpl;

  @override
  Book get book;
  @override
  bool get isCanStoreBook;
  @override
  @JsonKey(ignore: true)
  _$$BookInfoPageStateImplCopyWith<_$BookInfoPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
