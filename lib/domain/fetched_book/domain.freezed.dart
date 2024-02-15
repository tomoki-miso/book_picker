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

FetchedBook _$FetchedBookFromJson(Map<String, dynamic> json) {
  return _FetchedBook.fromJson(json);
}

/// @nodoc
mixin _$FetchedBook {
  String? get isbn => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get itemCaption => throw _privateConstructorUsedError;
  int? get itemPrice => throw _privateConstructorUsedError;
  String? get largeImageUrl => throw _privateConstructorUsedError;
  String? get mediumImageUrl => throw _privateConstructorUsedError;
  String? get publisherName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchedBookCopyWith<FetchedBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchedBookCopyWith<$Res> {
  factory $FetchedBookCopyWith(
          FetchedBook value, $Res Function(FetchedBook) then) =
      _$FetchedBookCopyWithImpl<$Res, FetchedBook>;
  @useResult
  $Res call(
      {String? isbn,
      String? title,
      String? author,
      String? itemCaption,
      int? itemPrice,
      String? largeImageUrl,
      String? mediumImageUrl,
      String? publisherName});
}

/// @nodoc
class _$FetchedBookCopyWithImpl<$Res, $Val extends FetchedBook>
    implements $FetchedBookCopyWith<$Res> {
  _$FetchedBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isbn = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? itemCaption = freezed,
    Object? itemPrice = freezed,
    Object? largeImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? publisherName = freezed,
  }) {
    return _then(_value.copyWith(
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCaption: freezed == itemCaption
          ? _value.itemCaption
          : itemCaption // ignore: cast_nullable_to_non_nullable
              as String?,
      itemPrice: freezed == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherName: freezed == publisherName
          ? _value.publisherName
          : publisherName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchedBookImplCopyWith<$Res>
    implements $FetchedBookCopyWith<$Res> {
  factory _$$FetchedBookImplCopyWith(
          _$FetchedBookImpl value, $Res Function(_$FetchedBookImpl) then) =
      __$$FetchedBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? isbn,
      String? title,
      String? author,
      String? itemCaption,
      int? itemPrice,
      String? largeImageUrl,
      String? mediumImageUrl,
      String? publisherName});
}

/// @nodoc
class __$$FetchedBookImplCopyWithImpl<$Res>
    extends _$FetchedBookCopyWithImpl<$Res, _$FetchedBookImpl>
    implements _$$FetchedBookImplCopyWith<$Res> {
  __$$FetchedBookImplCopyWithImpl(
      _$FetchedBookImpl _value, $Res Function(_$FetchedBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isbn = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? itemCaption = freezed,
    Object? itemPrice = freezed,
    Object? largeImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? publisherName = freezed,
  }) {
    return _then(_$FetchedBookImpl(
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCaption: freezed == itemCaption
          ? _value.itemCaption
          : itemCaption // ignore: cast_nullable_to_non_nullable
              as String?,
      itemPrice: freezed == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherName: freezed == publisherName
          ? _value.publisherName
          : publisherName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchedBookImpl implements _FetchedBook {
  _$FetchedBookImpl(
      {this.isbn,
      this.title,
      this.author,
      this.itemCaption,
      this.itemPrice,
      this.largeImageUrl,
      this.mediumImageUrl,
      this.publisherName});

  factory _$FetchedBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchedBookImplFromJson(json);

  @override
  final String? isbn;
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? itemCaption;
  @override
  final int? itemPrice;
  @override
  final String? largeImageUrl;
  @override
  final String? mediumImageUrl;
  @override
  final String? publisherName;

  @override
  String toString() {
    return 'FetchedBook(isbn: $isbn, title: $title, author: $author, itemCaption: $itemCaption, itemPrice: $itemPrice, largeImageUrl: $largeImageUrl, mediumImageUrl: $mediumImageUrl, publisherName: $publisherName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedBookImpl &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.itemCaption, itemCaption) ||
                other.itemCaption == itemCaption) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.publisherName, publisherName) ||
                other.publisherName == publisherName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isbn, title, author, itemCaption,
      itemPrice, largeImageUrl, mediumImageUrl, publisherName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedBookImplCopyWith<_$FetchedBookImpl> get copyWith =>
      __$$FetchedBookImplCopyWithImpl<_$FetchedBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchedBookImplToJson(
      this,
    );
  }
}

abstract class _FetchedBook implements FetchedBook {
  factory _FetchedBook(
      {final String? isbn,
      final String? title,
      final String? author,
      final String? itemCaption,
      final int? itemPrice,
      final String? largeImageUrl,
      final String? mediumImageUrl,
      final String? publisherName}) = _$FetchedBookImpl;

  factory _FetchedBook.fromJson(Map<String, dynamic> json) =
      _$FetchedBookImpl.fromJson;

  @override
  String? get isbn;
  @override
  String? get title;
  @override
  String? get author;
  @override
  String? get itemCaption;
  @override
  int? get itemPrice;
  @override
  String? get largeImageUrl;
  @override
  String? get mediumImageUrl;
  @override
  String? get publisherName;
  @override
  @JsonKey(ignore: true)
  _$$FetchedBookImplCopyWith<_$FetchedBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
