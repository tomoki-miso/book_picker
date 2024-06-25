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

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String? get isbn => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get itemCaption => throw _privateConstructorUsedError;
  int? get itemPrice => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get mediumImageUrl => throw _privateConstructorUsedError;
  String? get publisherName => throw _privateConstructorUsedError;
  String? get affiUrl => throw _privateConstructorUsedError;
  int? get numberOfStored => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get storedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {String? isbn,
      String? title,
      String? author,
      String? itemCaption,
      int? itemPrice,
      String? imageUrl,
      String? mediumImageUrl,
      String? publisherName,
      String? affiUrl,
      int? numberOfStored,
      @TimestampConverter() DateTime? storedTime});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

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
    Object? imageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? publisherName = freezed,
    Object? affiUrl = freezed,
    Object? numberOfStored = freezed,
    Object? storedTime = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherName: freezed == publisherName
          ? _value.publisherName
          : publisherName // ignore: cast_nullable_to_non_nullable
              as String?,
      affiUrl: freezed == affiUrl
          ? _value.affiUrl
          : affiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfStored: freezed == numberOfStored
          ? _value.numberOfStored
          : numberOfStored // ignore: cast_nullable_to_non_nullable
              as int?,
      storedTime: freezed == storedTime
          ? _value.storedTime
          : storedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? isbn,
      String? title,
      String? author,
      String? itemCaption,
      int? itemPrice,
      String? imageUrl,
      String? mediumImageUrl,
      String? publisherName,
      String? affiUrl,
      int? numberOfStored,
      @TimestampConverter() DateTime? storedTime});
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isbn = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? itemCaption = freezed,
    Object? itemPrice = freezed,
    Object? imageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? publisherName = freezed,
    Object? affiUrl = freezed,
    Object? numberOfStored = freezed,
    Object? storedTime = freezed,
  }) {
    return _then(_$BookImpl(
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherName: freezed == publisherName
          ? _value.publisherName
          : publisherName // ignore: cast_nullable_to_non_nullable
              as String?,
      affiUrl: freezed == affiUrl
          ? _value.affiUrl
          : affiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfStored: freezed == numberOfStored
          ? _value.numberOfStored
          : numberOfStored // ignore: cast_nullable_to_non_nullable
              as int?,
      storedTime: freezed == storedTime
          ? _value.storedTime
          : storedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  _$BookImpl(
      {this.isbn,
      this.title,
      this.author,
      this.itemCaption,
      this.itemPrice,
      this.imageUrl,
      this.mediumImageUrl,
      this.publisherName,
      this.affiUrl,
      this.numberOfStored,
      @TimestampConverter() this.storedTime});

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

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
  final String? imageUrl;
  @override
  final String? mediumImageUrl;
  @override
  final String? publisherName;
  @override
  final String? affiUrl;
  @override
  final int? numberOfStored;
  @override
  @TimestampConverter()
  final DateTime? storedTime;

  @override
  String toString() {
    return 'Book(isbn: $isbn, title: $title, author: $author, itemCaption: $itemCaption, itemPrice: $itemPrice, imageUrl: $imageUrl, mediumImageUrl: $mediumImageUrl, publisherName: $publisherName, affiUrl: $affiUrl, numberOfStored: $numberOfStored, storedTime: $storedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.itemCaption, itemCaption) ||
                other.itemCaption == itemCaption) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.publisherName, publisherName) ||
                other.publisherName == publisherName) &&
            (identical(other.affiUrl, affiUrl) || other.affiUrl == affiUrl) &&
            (identical(other.numberOfStored, numberOfStored) ||
                other.numberOfStored == numberOfStored) &&
            (identical(other.storedTime, storedTime) ||
                other.storedTime == storedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isbn,
      title,
      author,
      itemCaption,
      itemPrice,
      imageUrl,
      mediumImageUrl,
      publisherName,
      affiUrl,
      numberOfStored,
      storedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  factory _Book(
      {final String? isbn,
      final String? title,
      final String? author,
      final String? itemCaption,
      final int? itemPrice,
      final String? imageUrl,
      final String? mediumImageUrl,
      final String? publisherName,
      final String? affiUrl,
      final int? numberOfStored,
      @TimestampConverter() final DateTime? storedTime}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

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
  String? get imageUrl;
  @override
  String? get mediumImageUrl;
  @override
  String? get publisherName;
  @override
  String? get affiUrl;
  @override
  int? get numberOfStored;
  @override
  @TimestampConverter()
  DateTime? get storedTime;
  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
