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
mixin _$SelectedBooksPageState {
  List<Book> get storingBooks => throw _privateConstructorUsedError;
  List<String?> get userStoringBooks => throw _privateConstructorUsedError;
  BookListType? get bookListType => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedBooksPageStateCopyWith<SelectedBooksPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedBooksPageStateCopyWith<$Res> {
  factory $SelectedBooksPageStateCopyWith(SelectedBooksPageState value,
          $Res Function(SelectedBooksPageState) then) =
      _$SelectedBooksPageStateCopyWithImpl<$Res, SelectedBooksPageState>;
  @useResult
  $Res call(
      {List<Book> storingBooks,
      List<String?> userStoringBooks,
      BookListType? bookListType,
      bool isLoading});
}

/// @nodoc
class _$SelectedBooksPageStateCopyWithImpl<$Res,
        $Val extends SelectedBooksPageState>
    implements $SelectedBooksPageStateCopyWith<$Res> {
  _$SelectedBooksPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storingBooks = null,
    Object? userStoringBooks = null,
    Object? bookListType = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      storingBooks: null == storingBooks
          ? _value.storingBooks
          : storingBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      userStoringBooks: null == userStoringBooks
          ? _value.userStoringBooks
          : userStoringBooks // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      bookListType: freezed == bookListType
          ? _value.bookListType
          : bookListType // ignore: cast_nullable_to_non_nullable
              as BookListType?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedBooksPageStateImplCopyWith<$Res>
    implements $SelectedBooksPageStateCopyWith<$Res> {
  factory _$$SelectedBooksPageStateImplCopyWith(
          _$SelectedBooksPageStateImpl value,
          $Res Function(_$SelectedBooksPageStateImpl) then) =
      __$$SelectedBooksPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Book> storingBooks,
      List<String?> userStoringBooks,
      BookListType? bookListType,
      bool isLoading});
}

/// @nodoc
class __$$SelectedBooksPageStateImplCopyWithImpl<$Res>
    extends _$SelectedBooksPageStateCopyWithImpl<$Res,
        _$SelectedBooksPageStateImpl>
    implements _$$SelectedBooksPageStateImplCopyWith<$Res> {
  __$$SelectedBooksPageStateImplCopyWithImpl(
      _$SelectedBooksPageStateImpl _value,
      $Res Function(_$SelectedBooksPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storingBooks = null,
    Object? userStoringBooks = null,
    Object? bookListType = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$SelectedBooksPageStateImpl(
      storingBooks: null == storingBooks
          ? _value._storingBooks
          : storingBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      userStoringBooks: null == userStoringBooks
          ? _value._userStoringBooks
          : userStoringBooks // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      bookListType: freezed == bookListType
          ? _value.bookListType
          : bookListType // ignore: cast_nullable_to_non_nullable
              as BookListType?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectedBooksPageStateImpl implements _SelectedBooksPageState {
  const _$SelectedBooksPageStateImpl(
      {required final List<Book> storingBooks,
      required final List<String?> userStoringBooks,
      this.bookListType,
      this.isLoading = false})
      : _storingBooks = storingBooks,
        _userStoringBooks = userStoringBooks;

  final List<Book> _storingBooks;
  @override
  List<Book> get storingBooks {
    if (_storingBooks is EqualUnmodifiableListView) return _storingBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storingBooks);
  }

  final List<String?> _userStoringBooks;
  @override
  List<String?> get userStoringBooks {
    if (_userStoringBooks is EqualUnmodifiableListView)
      return _userStoringBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userStoringBooks);
  }

  @override
  final BookListType? bookListType;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SelectedBooksPageState(storingBooks: $storingBooks, userStoringBooks: $userStoringBooks, bookListType: $bookListType, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedBooksPageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._storingBooks, _storingBooks) &&
            const DeepCollectionEquality()
                .equals(other._userStoringBooks, _userStoringBooks) &&
            (identical(other.bookListType, bookListType) ||
                other.bookListType == bookListType) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_storingBooks),
      const DeepCollectionEquality().hash(_userStoringBooks),
      bookListType,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedBooksPageStateImplCopyWith<_$SelectedBooksPageStateImpl>
      get copyWith => __$$SelectedBooksPageStateImplCopyWithImpl<
          _$SelectedBooksPageStateImpl>(this, _$identity);
}

abstract class _SelectedBooksPageState implements SelectedBooksPageState {
  const factory _SelectedBooksPageState(
      {required final List<Book> storingBooks,
      required final List<String?> userStoringBooks,
      final BookListType? bookListType,
      final bool isLoading}) = _$SelectedBooksPageStateImpl;

  @override
  List<Book> get storingBooks;
  @override
  List<String?> get userStoringBooks;
  @override
  BookListType? get bookListType;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SelectedBooksPageStateImplCopyWith<_$SelectedBooksPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
