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
  List<Book> get commonStoringBookOrderByAmount =>
      throw _privateConstructorUsedError;
  List<Book> get commonStoringBookOrderByTime =>
      throw _privateConstructorUsedError;
  List<AppAd> get appAds => throw _privateConstructorUsedError;
  UserInfoClass get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  FetchedBook? get fetchedBook => throw _privateConstructorUsedError;
  Book? get todaysPickedBook => throw _privateConstructorUsedError;

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
      {List<Book> commonStoringBookOrderByAmount,
      List<Book> commonStoringBookOrderByTime,
      List<AppAd> appAds,
      UserInfoClass user,
      bool isLoading,
      FetchedBook? fetchedBook,
      Book? todaysPickedBook});

  $UserInfoClassCopyWith<$Res> get user;
  $FetchedBookCopyWith<$Res>? get fetchedBook;
  $BookCopyWith<$Res>? get todaysPickedBook;
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
    Object? commonStoringBookOrderByAmount = null,
    Object? commonStoringBookOrderByTime = null,
    Object? appAds = null,
    Object? user = null,
    Object? isLoading = null,
    Object? fetchedBook = freezed,
    Object? todaysPickedBook = freezed,
  }) {
    return _then(_value.copyWith(
      commonStoringBookOrderByAmount: null == commonStoringBookOrderByAmount
          ? _value.commonStoringBookOrderByAmount
          : commonStoringBookOrderByAmount // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      commonStoringBookOrderByTime: null == commonStoringBookOrderByTime
          ? _value.commonStoringBookOrderByTime
          : commonStoringBookOrderByTime // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      appAds: null == appAds
          ? _value.appAds
          : appAds // ignore: cast_nullable_to_non_nullable
              as List<AppAd>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoClass,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchedBook: freezed == fetchedBook
          ? _value.fetchedBook
          : fetchedBook // ignore: cast_nullable_to_non_nullable
              as FetchedBook?,
      todaysPickedBook: freezed == todaysPickedBook
          ? _value.todaysPickedBook
          : todaysPickedBook // ignore: cast_nullable_to_non_nullable
              as Book?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoClassCopyWith<$Res> get user {
    return $UserInfoClassCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
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
  $BookCopyWith<$Res>? get todaysPickedBook {
    if (_value.todaysPickedBook == null) {
      return null;
    }

    return $BookCopyWith<$Res>(_value.todaysPickedBook!, (value) {
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
      {List<Book> commonStoringBookOrderByAmount,
      List<Book> commonStoringBookOrderByTime,
      List<AppAd> appAds,
      UserInfoClass user,
      bool isLoading,
      FetchedBook? fetchedBook,
      Book? todaysPickedBook});

  @override
  $UserInfoClassCopyWith<$Res> get user;
  @override
  $FetchedBookCopyWith<$Res>? get fetchedBook;
  @override
  $BookCopyWith<$Res>? get todaysPickedBook;
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
    Object? commonStoringBookOrderByAmount = null,
    Object? commonStoringBookOrderByTime = null,
    Object? appAds = null,
    Object? user = null,
    Object? isLoading = null,
    Object? fetchedBook = freezed,
    Object? todaysPickedBook = freezed,
  }) {
    return _then(_$TopPageStateImpl(
      commonStoringBookOrderByAmount: null == commonStoringBookOrderByAmount
          ? _value._commonStoringBookOrderByAmount
          : commonStoringBookOrderByAmount // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      commonStoringBookOrderByTime: null == commonStoringBookOrderByTime
          ? _value._commonStoringBookOrderByTime
          : commonStoringBookOrderByTime // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      appAds: null == appAds
          ? _value._appAds
          : appAds // ignore: cast_nullable_to_non_nullable
              as List<AppAd>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoClass,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchedBook: freezed == fetchedBook
          ? _value.fetchedBook
          : fetchedBook // ignore: cast_nullable_to_non_nullable
              as FetchedBook?,
      todaysPickedBook: freezed == todaysPickedBook
          ? _value.todaysPickedBook
          : todaysPickedBook // ignore: cast_nullable_to_non_nullable
              as Book?,
    ));
  }
}

/// @nodoc

class _$TopPageStateImpl implements _TopPageState {
  const _$TopPageStateImpl(
      {required final List<Book> commonStoringBookOrderByAmount,
      required final List<Book> commonStoringBookOrderByTime,
      required final List<AppAd> appAds,
      required this.user,
      this.isLoading = false,
      this.fetchedBook,
      this.todaysPickedBook})
      : _commonStoringBookOrderByAmount = commonStoringBookOrderByAmount,
        _commonStoringBookOrderByTime = commonStoringBookOrderByTime,
        _appAds = appAds;

  final List<Book> _commonStoringBookOrderByAmount;
  @override
  List<Book> get commonStoringBookOrderByAmount {
    if (_commonStoringBookOrderByAmount is EqualUnmodifiableListView)
      return _commonStoringBookOrderByAmount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonStoringBookOrderByAmount);
  }

  final List<Book> _commonStoringBookOrderByTime;
  @override
  List<Book> get commonStoringBookOrderByTime {
    if (_commonStoringBookOrderByTime is EqualUnmodifiableListView)
      return _commonStoringBookOrderByTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonStoringBookOrderByTime);
  }

  final List<AppAd> _appAds;
  @override
  List<AppAd> get appAds {
    if (_appAds is EqualUnmodifiableListView) return _appAds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appAds);
  }

  @override
  final UserInfoClass user;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final FetchedBook? fetchedBook;
  @override
  final Book? todaysPickedBook;

  @override
  String toString() {
    return 'TopPageState(commonStoringBookOrderByAmount: $commonStoringBookOrderByAmount, commonStoringBookOrderByTime: $commonStoringBookOrderByTime, appAds: $appAds, user: $user, isLoading: $isLoading, fetchedBook: $fetchedBook, todaysPickedBook: $todaysPickedBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPageStateImpl &&
            const DeepCollectionEquality().equals(
                other._commonStoringBookOrderByAmount,
                _commonStoringBookOrderByAmount) &&
            const DeepCollectionEquality().equals(
                other._commonStoringBookOrderByTime,
                _commonStoringBookOrderByTime) &&
            const DeepCollectionEquality().equals(other._appAds, _appAds) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.fetchedBook, fetchedBook) ||
                other.fetchedBook == fetchedBook) &&
            (identical(other.todaysPickedBook, todaysPickedBook) ||
                other.todaysPickedBook == todaysPickedBook));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_commonStoringBookOrderByAmount),
      const DeepCollectionEquality().hash(_commonStoringBookOrderByTime),
      const DeepCollectionEquality().hash(_appAds),
      user,
      isLoading,
      fetchedBook,
      todaysPickedBook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPageStateImplCopyWith<_$TopPageStateImpl> get copyWith =>
      __$$TopPageStateImplCopyWithImpl<_$TopPageStateImpl>(this, _$identity);
}

abstract class _TopPageState implements TopPageState {
  const factory _TopPageState(
      {required final List<Book> commonStoringBookOrderByAmount,
      required final List<Book> commonStoringBookOrderByTime,
      required final List<AppAd> appAds,
      required final UserInfoClass user,
      final bool isLoading,
      final FetchedBook? fetchedBook,
      final Book? todaysPickedBook}) = _$TopPageStateImpl;

  @override
  List<Book> get commonStoringBookOrderByAmount;
  @override
  List<Book> get commonStoringBookOrderByTime;
  @override
  List<AppAd> get appAds;
  @override
  UserInfoClass get user;
  @override
  bool get isLoading;
  @override
  FetchedBook? get fetchedBook;
  @override
  Book? get todaysPickedBook;
  @override
  @JsonKey(ignore: true)
  _$$TopPageStateImplCopyWith<_$TopPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
