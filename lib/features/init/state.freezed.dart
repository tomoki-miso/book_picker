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
mixin _$InitState {
  String get currentVersion => throw _privateConstructorUsedError;
  String get recomemdedVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitStateCopyWith<InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res, InitState>;
  @useResult
  $Res call({String currentVersion, String recomemdedVersion});
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res, $Val extends InitState>
    implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentVersion = null,
    Object? recomemdedVersion = null,
  }) {
    return _then(_value.copyWith(
      currentVersion: null == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      recomemdedVersion: null == recomemdedVersion
          ? _value.recomemdedVersion
          : recomemdedVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitStateImplCopyWith<$Res>
    implements $InitStateCopyWith<$Res> {
  factory _$$InitStateImplCopyWith(
          _$InitStateImpl value, $Res Function(_$InitStateImpl) then) =
      __$$InitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentVersion, String recomemdedVersion});
}

/// @nodoc
class __$$InitStateImplCopyWithImpl<$Res>
    extends _$InitStateCopyWithImpl<$Res, _$InitStateImpl>
    implements _$$InitStateImplCopyWith<$Res> {
  __$$InitStateImplCopyWithImpl(
      _$InitStateImpl _value, $Res Function(_$InitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentVersion = null,
    Object? recomemdedVersion = null,
  }) {
    return _then(_$InitStateImpl(
      currentVersion: null == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      recomemdedVersion: null == recomemdedVersion
          ? _value.recomemdedVersion
          : recomemdedVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitStateImpl implements _InitState {
  const _$InitStateImpl(
      {required this.currentVersion, required this.recomemdedVersion});

  @override
  final String currentVersion;
  @override
  final String recomemdedVersion;

  @override
  String toString() {
    return 'InitState(currentVersion: $currentVersion, recomemdedVersion: $recomemdedVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitStateImpl &&
            (identical(other.currentVersion, currentVersion) ||
                other.currentVersion == currentVersion) &&
            (identical(other.recomemdedVersion, recomemdedVersion) ||
                other.recomemdedVersion == recomemdedVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentVersion, recomemdedVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitStateImplCopyWith<_$InitStateImpl> get copyWith =>
      __$$InitStateImplCopyWithImpl<_$InitStateImpl>(this, _$identity);
}

abstract class _InitState implements InitState {
  const factory _InitState(
      {required final String currentVersion,
      required final String recomemdedVersion}) = _$InitStateImpl;

  @override
  String get currentVersion;
  @override
  String get recomemdedVersion;
  @override
  @JsonKey(ignore: true)
  _$$InitStateImplCopyWith<_$InitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
