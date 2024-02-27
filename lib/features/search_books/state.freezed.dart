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
mixin _$SearchBookPageState {
  TextEditingController get searchWordController =>
      throw _privateConstructorUsedError;
  SearchType get searchType => throw _privateConstructorUsedError;
  List<String?> get userStoringBooks => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;
  List<Book>? get searchedBooks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBookPageStateCopyWith<SearchBookPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBookPageStateCopyWith<$Res> {
  factory $SearchBookPageStateCopyWith(
          SearchBookPageState value, $Res Function(SearchBookPageState) then) =
      _$SearchBookPageStateCopyWithImpl<$Res, SearchBookPageState>;
  @useResult
  $Res call(
      {TextEditingController searchWordController,
      SearchType searchType,
      List<String?> userStoringBooks,
      String? keyword,
      List<Book>? searchedBooks});
}

/// @nodoc
class _$SearchBookPageStateCopyWithImpl<$Res, $Val extends SearchBookPageState>
    implements $SearchBookPageStateCopyWith<$Res> {
  _$SearchBookPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchWordController = null,
    Object? searchType = null,
    Object? userStoringBooks = null,
    Object? keyword = freezed,
    Object? searchedBooks = freezed,
  }) {
    return _then(_value.copyWith(
      searchWordController: null == searchWordController
          ? _value.searchWordController
          : searchWordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
      userStoringBooks: null == userStoringBooks
          ? _value.userStoringBooks
          : userStoringBooks // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      searchedBooks: freezed == searchedBooks
          ? _value.searchedBooks
          : searchedBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchBookPageStateImplCopyWith<$Res>
    implements $SearchBookPageStateCopyWith<$Res> {
  factory _$$SearchBookPageStateImplCopyWith(_$SearchBookPageStateImpl value,
          $Res Function(_$SearchBookPageStateImpl) then) =
      __$$SearchBookPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController searchWordController,
      SearchType searchType,
      List<String?> userStoringBooks,
      String? keyword,
      List<Book>? searchedBooks});
}

/// @nodoc
class __$$SearchBookPageStateImplCopyWithImpl<$Res>
    extends _$SearchBookPageStateCopyWithImpl<$Res, _$SearchBookPageStateImpl>
    implements _$$SearchBookPageStateImplCopyWith<$Res> {
  __$$SearchBookPageStateImplCopyWithImpl(_$SearchBookPageStateImpl _value,
      $Res Function(_$SearchBookPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchWordController = null,
    Object? searchType = null,
    Object? userStoringBooks = null,
    Object? keyword = freezed,
    Object? searchedBooks = freezed,
  }) {
    return _then(_$SearchBookPageStateImpl(
      searchWordController: null == searchWordController
          ? _value.searchWordController
          : searchWordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
      userStoringBooks: null == userStoringBooks
          ? _value._userStoringBooks
          : userStoringBooks // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      searchedBooks: freezed == searchedBooks
          ? _value._searchedBooks
          : searchedBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
    ));
  }
}

/// @nodoc

class _$SearchBookPageStateImpl implements _SearchBookPageState {
  const _$SearchBookPageStateImpl(
      {required this.searchWordController,
      required this.searchType,
      required final List<String?> userStoringBooks,
      this.keyword,
      final List<Book>? searchedBooks})
      : _userStoringBooks = userStoringBooks,
        _searchedBooks = searchedBooks;

  @override
  final TextEditingController searchWordController;
  @override
  final SearchType searchType;
  final List<String?> _userStoringBooks;
  @override
  List<String?> get userStoringBooks {
    if (_userStoringBooks is EqualUnmodifiableListView)
      return _userStoringBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userStoringBooks);
  }

  @override
  final String? keyword;
  final List<Book>? _searchedBooks;
  @override
  List<Book>? get searchedBooks {
    final value = _searchedBooks;
    if (value == null) return null;
    if (_searchedBooks is EqualUnmodifiableListView) return _searchedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchBookPageState(searchWordController: $searchWordController, searchType: $searchType, userStoringBooks: $userStoringBooks, keyword: $keyword, searchedBooks: $searchedBooks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBookPageStateImpl &&
            (identical(other.searchWordController, searchWordController) ||
                other.searchWordController == searchWordController) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType) &&
            const DeepCollectionEquality()
                .equals(other._userStoringBooks, _userStoringBooks) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality()
                .equals(other._searchedBooks, _searchedBooks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchWordController,
      searchType,
      const DeepCollectionEquality().hash(_userStoringBooks),
      keyword,
      const DeepCollectionEquality().hash(_searchedBooks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBookPageStateImplCopyWith<_$SearchBookPageStateImpl> get copyWith =>
      __$$SearchBookPageStateImplCopyWithImpl<_$SearchBookPageStateImpl>(
          this, _$identity);
}

abstract class _SearchBookPageState implements SearchBookPageState {
  const factory _SearchBookPageState(
      {required final TextEditingController searchWordController,
      required final SearchType searchType,
      required final List<String?> userStoringBooks,
      final String? keyword,
      final List<Book>? searchedBooks}) = _$SearchBookPageStateImpl;

  @override
  TextEditingController get searchWordController;
  @override
  SearchType get searchType;
  @override
  List<String?> get userStoringBooks;
  @override
  String? get keyword;
  @override
  List<Book>? get searchedBooks;
  @override
  @JsonKey(ignore: true)
  _$$SearchBookPageStateImplCopyWith<_$SearchBookPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
