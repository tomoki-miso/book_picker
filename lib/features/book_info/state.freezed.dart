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
  FetchedBook? get fetchedBook => throw _privateConstructorUsedError;
  CommonStoringBook? get commonStoringBook =>
      throw _privateConstructorUsedError;
  UserStoringBook? get userStoringBook => throw _privateConstructorUsedError;

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
  $Res call(
      {FetchedBook? fetchedBook,
      CommonStoringBook? commonStoringBook,
      UserStoringBook? userStoringBook});

  $FetchedBookCopyWith<$Res>? get fetchedBook;
  $CommonStoringBookCopyWith<$Res>? get commonStoringBook;
  $UserStoringBookCopyWith<$Res>? get userStoringBook;
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
    Object? fetchedBook = freezed,
    Object? commonStoringBook = freezed,
    Object? userStoringBook = freezed,
  }) {
    return _then(_value.copyWith(
      fetchedBook: freezed == fetchedBook
          ? _value.fetchedBook
          : fetchedBook // ignore: cast_nullable_to_non_nullable
              as FetchedBook?,
      commonStoringBook: freezed == commonStoringBook
          ? _value.commonStoringBook
          : commonStoringBook // ignore: cast_nullable_to_non_nullable
              as CommonStoringBook?,
      userStoringBook: freezed == userStoringBook
          ? _value.userStoringBook
          : userStoringBook // ignore: cast_nullable_to_non_nullable
              as UserStoringBook?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchedBookCopyWith<$Res>? get fetchedBook {
    if (_value.fetchedBook == null) {
      return null;
    }

    return $FetchedBookCopyWith<$Res>(_value.fetchedBook!, (value) {
      return _then(_value.copyWith(fetchedBook: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommonStoringBookCopyWith<$Res>? get commonStoringBook {
    if (_value.commonStoringBook == null) {
      return null;
    }

    return $CommonStoringBookCopyWith<$Res>(_value.commonStoringBook!, (value) {
      return _then(_value.copyWith(commonStoringBook: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserStoringBookCopyWith<$Res>? get userStoringBook {
    if (_value.userStoringBook == null) {
      return null;
    }

    return $UserStoringBookCopyWith<$Res>(_value.userStoringBook!, (value) {
      return _then(_value.copyWith(userStoringBook: value) as $Val);
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
  $Res call(
      {FetchedBook? fetchedBook,
      CommonStoringBook? commonStoringBook,
      UserStoringBook? userStoringBook});

  @override
  $FetchedBookCopyWith<$Res>? get fetchedBook;
  @override
  $CommonStoringBookCopyWith<$Res>? get commonStoringBook;
  @override
  $UserStoringBookCopyWith<$Res>? get userStoringBook;
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
    Object? fetchedBook = freezed,
    Object? commonStoringBook = freezed,
    Object? userStoringBook = freezed,
  }) {
    return _then(_$BookInfoPageStateImpl(
      fetchedBook: freezed == fetchedBook
          ? _value.fetchedBook
          : fetchedBook // ignore: cast_nullable_to_non_nullable
              as FetchedBook?,
      commonStoringBook: freezed == commonStoringBook
          ? _value.commonStoringBook
          : commonStoringBook // ignore: cast_nullable_to_non_nullable
              as CommonStoringBook?,
      userStoringBook: freezed == userStoringBook
          ? _value.userStoringBook
          : userStoringBook // ignore: cast_nullable_to_non_nullable
              as UserStoringBook?,
    ));
  }
}

/// @nodoc

class _$BookInfoPageStateImpl implements _BookInfoPageState {
  const _$BookInfoPageStateImpl(
      {this.fetchedBook, this.commonStoringBook, this.userStoringBook});

  @override
  final FetchedBook? fetchedBook;
  @override
  final CommonStoringBook? commonStoringBook;
  @override
  final UserStoringBook? userStoringBook;

  @override
  String toString() {
    return 'BookInfoPageState(fetchedBook: $fetchedBook, commonStoringBook: $commonStoringBook, userStoringBook: $userStoringBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookInfoPageStateImpl &&
            (identical(other.fetchedBook, fetchedBook) ||
                other.fetchedBook == fetchedBook) &&
            (identical(other.commonStoringBook, commonStoringBook) ||
                other.commonStoringBook == commonStoringBook) &&
            (identical(other.userStoringBook, userStoringBook) ||
                other.userStoringBook == userStoringBook));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fetchedBook, commonStoringBook, userStoringBook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookInfoPageStateImplCopyWith<_$BookInfoPageStateImpl> get copyWith =>
      __$$BookInfoPageStateImplCopyWithImpl<_$BookInfoPageStateImpl>(
          this, _$identity);
}

abstract class _BookInfoPageState implements BookInfoPageState {
  const factory _BookInfoPageState(
      {final FetchedBook? fetchedBook,
      final CommonStoringBook? commonStoringBook,
      final UserStoringBook? userStoringBook}) = _$BookInfoPageStateImpl;

  @override
  FetchedBook? get fetchedBook;
  @override
  CommonStoringBook? get commonStoringBook;
  @override
  UserStoringBook? get userStoringBook;
  @override
  @JsonKey(ignore: true)
  _$$BookInfoPageStateImplCopyWith<_$BookInfoPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
