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
  $Res call({FetchedBook book});

  $FetchedBookCopyWith<$Res> get book;
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
  }) {
    return _then(_value.copyWith(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as FetchedBook,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchedBookCopyWith<$Res> get book {
    return $FetchedBookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
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
  $Res call({FetchedBook book});

  @override
  $FetchedBookCopyWith<$Res> get book;
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
  }) {
    return _then(_$TopPageStateImpl(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as FetchedBook,
    ));
  }
}

/// @nodoc

class _$TopPageStateImpl implements _TopPageState {
  const _$TopPageStateImpl({required this.book});

  @override
  final FetchedBook book;

  @override
  String toString() {
    return 'TopPageState(book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPageStateImpl &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPageStateImplCopyWith<_$TopPageStateImpl> get copyWith =>
      __$$TopPageStateImplCopyWithImpl<_$TopPageStateImpl>(this, _$identity);
}

abstract class _TopPageState implements TopPageState {
  const factory _TopPageState({required final FetchedBook book}) =
      _$TopPageStateImpl;

  @override
  FetchedBook get book;
  @override
  @JsonKey(ignore: true)
  _$$TopPageStateImplCopyWith<_$TopPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
