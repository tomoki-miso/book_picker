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

AppAd _$AppAdFromJson(Map<String, dynamic> json) {
  return _AppAd.fromJson(json);
}

/// @nodoc
mixin _$AppAd {
  String? get appId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get appUrl => throw _privateConstructorUsedError;
  String? get googleUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppAdCopyWith<AppAd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAdCopyWith<$Res> {
  factory $AppAdCopyWith(AppAd value, $Res Function(AppAd) then) =
      _$AppAdCopyWithImpl<$Res, AppAd>;
  @useResult
  $Res call(
      {String? appId, String? imageUrl, String? appUrl, String? googleUrl});
}

/// @nodoc
class _$AppAdCopyWithImpl<$Res, $Val extends AppAd>
    implements $AppAdCopyWith<$Res> {
  _$AppAdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? imageUrl = freezed,
    Object? appUrl = freezed,
    Object? googleUrl = freezed,
  }) {
    return _then(_value.copyWith(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appUrl: freezed == appUrl
          ? _value.appUrl
          : appUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      googleUrl: freezed == googleUrl
          ? _value.googleUrl
          : googleUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppAdImplCopyWith<$Res> implements $AppAdCopyWith<$Res> {
  factory _$$AppAdImplCopyWith(
          _$AppAdImpl value, $Res Function(_$AppAdImpl) then) =
      __$$AppAdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? appId, String? imageUrl, String? appUrl, String? googleUrl});
}

/// @nodoc
class __$$AppAdImplCopyWithImpl<$Res>
    extends _$AppAdCopyWithImpl<$Res, _$AppAdImpl>
    implements _$$AppAdImplCopyWith<$Res> {
  __$$AppAdImplCopyWithImpl(
      _$AppAdImpl _value, $Res Function(_$AppAdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? imageUrl = freezed,
    Object? appUrl = freezed,
    Object? googleUrl = freezed,
  }) {
    return _then(_$AppAdImpl(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appUrl: freezed == appUrl
          ? _value.appUrl
          : appUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      googleUrl: freezed == googleUrl
          ? _value.googleUrl
          : googleUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppAdImpl implements _AppAd {
  _$AppAdImpl({this.appId, this.imageUrl, this.appUrl, this.googleUrl});

  factory _$AppAdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppAdImplFromJson(json);

  @override
  final String? appId;
  @override
  final String? imageUrl;
  @override
  final String? appUrl;
  @override
  final String? googleUrl;

  @override
  String toString() {
    return 'AppAd(appId: $appId, imageUrl: $imageUrl, appUrl: $appUrl, googleUrl: $googleUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAdImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.appUrl, appUrl) || other.appUrl == appUrl) &&
            (identical(other.googleUrl, googleUrl) ||
                other.googleUrl == googleUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appId, imageUrl, appUrl, googleUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAdImplCopyWith<_$AppAdImpl> get copyWith =>
      __$$AppAdImplCopyWithImpl<_$AppAdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppAdImplToJson(
      this,
    );
  }
}

abstract class _AppAd implements AppAd {
  factory _AppAd(
      {final String? appId,
      final String? imageUrl,
      final String? appUrl,
      final String? googleUrl}) = _$AppAdImpl;

  factory _AppAd.fromJson(Map<String, dynamic> json) = _$AppAdImpl.fromJson;

  @override
  String? get appId;
  @override
  String? get imageUrl;
  @override
  String? get appUrl;
  @override
  String? get googleUrl;
  @override
  @JsonKey(ignore: true)
  _$$AppAdImplCopyWith<_$AppAdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
