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
mixin _$MyAccountPageState {
  UserInfoClass get userInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyAccountPageStateCopyWith<MyAccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAccountPageStateCopyWith<$Res> {
  factory $MyAccountPageStateCopyWith(
          MyAccountPageState value, $Res Function(MyAccountPageState) then) =
      _$MyAccountPageStateCopyWithImpl<$Res, MyAccountPageState>;
  @useResult
  $Res call({UserInfoClass userInfo});

  $UserInfoClassCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$MyAccountPageStateCopyWithImpl<$Res, $Val extends MyAccountPageState>
    implements $MyAccountPageStateCopyWith<$Res> {
  _$MyAccountPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_value.copyWith(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoClass,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoClassCopyWith<$Res> get userInfo {
    return $UserInfoClassCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyAccountPageStateImplCopyWith<$Res>
    implements $MyAccountPageStateCopyWith<$Res> {
  factory _$$MyAccountPageStateImplCopyWith(_$MyAccountPageStateImpl value,
          $Res Function(_$MyAccountPageStateImpl) then) =
      __$$MyAccountPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserInfoClass userInfo});

  @override
  $UserInfoClassCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$MyAccountPageStateImplCopyWithImpl<$Res>
    extends _$MyAccountPageStateCopyWithImpl<$Res, _$MyAccountPageStateImpl>
    implements _$$MyAccountPageStateImplCopyWith<$Res> {
  __$$MyAccountPageStateImplCopyWithImpl(_$MyAccountPageStateImpl _value,
      $Res Function(_$MyAccountPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_$MyAccountPageStateImpl(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoClass,
    ));
  }
}

/// @nodoc

class _$MyAccountPageStateImpl implements _MyAccountPageState {
  const _$MyAccountPageStateImpl({required this.userInfo});

  @override
  final UserInfoClass userInfo;

  @override
  String toString() {
    return 'MyAccountPageState(userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAccountPageStateImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAccountPageStateImplCopyWith<_$MyAccountPageStateImpl> get copyWith =>
      __$$MyAccountPageStateImplCopyWithImpl<_$MyAccountPageStateImpl>(
          this, _$identity);
}

abstract class _MyAccountPageState implements MyAccountPageState {
  const factory _MyAccountPageState({required final UserInfoClass userInfo}) =
      _$MyAccountPageStateImpl;

  @override
  UserInfoClass get userInfo;
  @override
  @JsonKey(ignore: true)
  _$$MyAccountPageStateImplCopyWith<_$MyAccountPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
