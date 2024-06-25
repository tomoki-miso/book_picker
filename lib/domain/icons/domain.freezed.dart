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

UserIcons _$UserIconsFromJson(Map<String, dynamic> json) {
  return _Icons.fromJson(json);
}

/// @nodoc
mixin _$UserIcons {
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIconsCopyWith<UserIcons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIconsCopyWith<$Res> {
  factory $UserIconsCopyWith(UserIcons value, $Res Function(UserIcons) then) =
      _$UserIconsCopyWithImpl<$Res, UserIcons>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class _$UserIconsCopyWithImpl<$Res, $Val extends UserIcons>
    implements $UserIconsCopyWith<$Res> {
  _$UserIconsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IconsImplCopyWith<$Res> implements $UserIconsCopyWith<$Res> {
  factory _$$IconsImplCopyWith(
          _$IconsImpl value, $Res Function(_$IconsImpl) then) =
      __$$IconsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$IconsImplCopyWithImpl<$Res>
    extends _$UserIconsCopyWithImpl<$Res, _$IconsImpl>
    implements _$$IconsImplCopyWith<$Res> {
  __$$IconsImplCopyWithImpl(
      _$IconsImpl _value, $Res Function(_$IconsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$IconsImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IconsImpl implements _Icons {
  _$IconsImpl({required this.imageUrl});

  factory _$IconsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IconsImplFromJson(json);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'UserIcons(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconsImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IconsImplCopyWith<_$IconsImpl> get copyWith =>
      __$$IconsImplCopyWithImpl<_$IconsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IconsImplToJson(
      this,
    );
  }
}

abstract class _Icons implements UserIcons {
  factory _Icons({required final String imageUrl}) = _$IconsImpl;

  factory _Icons.fromJson(Map<String, dynamic> json) = _$IconsImpl.fromJson;

  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$IconsImplCopyWith<_$IconsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
