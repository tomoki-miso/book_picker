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

Keyword _$KeywordFromJson(Map<String, dynamic> json) {
  return _Keyword.fromJson(json);
}

/// @nodoc
mixin _$Keyword {
  String get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeywordCopyWith<Keyword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordCopyWith<$Res> {
  factory $KeywordCopyWith(Keyword value, $Res Function(Keyword) then) =
      _$KeywordCopyWithImpl<$Res, Keyword>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class _$KeywordCopyWithImpl<$Res, $Val extends Keyword>
    implements $KeywordCopyWith<$Res> {
  _$KeywordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeywordImplCopyWith<$Res> implements $KeywordCopyWith<$Res> {
  factory _$$KeywordImplCopyWith(
          _$KeywordImpl value, $Res Function(_$KeywordImpl) then) =
      __$$KeywordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$KeywordImplCopyWithImpl<$Res>
    extends _$KeywordCopyWithImpl<$Res, _$KeywordImpl>
    implements _$$KeywordImplCopyWith<$Res> {
  __$$KeywordImplCopyWithImpl(
      _$KeywordImpl _value, $Res Function(_$KeywordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$KeywordImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeywordImpl implements _Keyword {
  _$KeywordImpl({required this.keyword});

  factory _$KeywordImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeywordImplFromJson(json);

  @override
  final String keyword;

  @override
  String toString() {
    return 'Keyword(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeywordImplCopyWith<_$KeywordImpl> get copyWith =>
      __$$KeywordImplCopyWithImpl<_$KeywordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeywordImplToJson(
      this,
    );
  }
}

abstract class _Keyword implements Keyword {
  factory _Keyword({required final String keyword}) = _$KeywordImpl;

  factory _Keyword.fromJson(Map<String, dynamic> json) = _$KeywordImpl.fromJson;

  @override
  String get keyword;
  @override
  @JsonKey(ignore: true)
  _$$KeywordImplCopyWith<_$KeywordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
