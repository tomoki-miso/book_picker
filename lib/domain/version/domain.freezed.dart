// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VersionConfig _$VersionConfigFromJson(Map<String, dynamic> json) {
  return _VersionConfig.fromJson(json);
}

/// @nodoc
mixin _$VersionConfig {
  String get iosVersion => throw _privateConstructorUsedError;
  String get androidVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionConfigCopyWith<VersionConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionConfigCopyWith<$Res> {
  factory $VersionConfigCopyWith(
          VersionConfig value, $Res Function(VersionConfig) then) =
      _$VersionConfigCopyWithImpl<$Res, VersionConfig>;
  @useResult
  $Res call({String iosVersion, String androidVersion});
}

/// @nodoc
class _$VersionConfigCopyWithImpl<$Res, $Val extends VersionConfig>
    implements $VersionConfigCopyWith<$Res> {
  _$VersionConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iosVersion = null,
    Object? androidVersion = null,
  }) {
    return _then(_value.copyWith(
      iosVersion: null == iosVersion
          ? _value.iosVersion
          : iosVersion // ignore: cast_nullable_to_non_nullable
              as String,
      androidVersion: null == androidVersion
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionConfigImplCopyWith<$Res>
    implements $VersionConfigCopyWith<$Res> {
  factory _$$VersionConfigImplCopyWith(
          _$VersionConfigImpl value, $Res Function(_$VersionConfigImpl) then) =
      __$$VersionConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String iosVersion, String androidVersion});
}

/// @nodoc
class __$$VersionConfigImplCopyWithImpl<$Res>
    extends _$VersionConfigCopyWithImpl<$Res, _$VersionConfigImpl>
    implements _$$VersionConfigImplCopyWith<$Res> {
  __$$VersionConfigImplCopyWithImpl(
      _$VersionConfigImpl _value, $Res Function(_$VersionConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iosVersion = null,
    Object? androidVersion = null,
  }) {
    return _then(_$VersionConfigImpl(
      iosVersion: null == iosVersion
          ? _value.iosVersion
          : iosVersion // ignore: cast_nullable_to_non_nullable
              as String,
      androidVersion: null == androidVersion
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionConfigImpl implements _VersionConfig {
  const _$VersionConfigImpl(
      {required this.iosVersion, required this.androidVersion});

  factory _$VersionConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionConfigImplFromJson(json);

  @override
  final String iosVersion;
  @override
  final String androidVersion;

  @override
  String toString() {
    return 'VersionConfig(iosVersion: $iosVersion, androidVersion: $androidVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionConfigImpl &&
            (identical(other.iosVersion, iosVersion) ||
                other.iosVersion == iosVersion) &&
            (identical(other.androidVersion, androidVersion) ||
                other.androidVersion == androidVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iosVersion, androidVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionConfigImplCopyWith<_$VersionConfigImpl> get copyWith =>
      __$$VersionConfigImplCopyWithImpl<_$VersionConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionConfigImplToJson(
      this,
    );
  }
}

abstract class _VersionConfig implements VersionConfig {
  const factory _VersionConfig(
      {required final String iosVersion,
      required final String androidVersion}) = _$VersionConfigImpl;

  factory _VersionConfig.fromJson(Map<String, dynamic> json) =
      _$VersionConfigImpl.fromJson;

  @override
  String get iosVersion;
  @override
  String get androidVersion;
  @override
  @JsonKey(ignore: true)
  _$$VersionConfigImplCopyWith<_$VersionConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
