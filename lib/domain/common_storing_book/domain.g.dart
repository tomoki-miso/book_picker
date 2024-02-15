// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommonStoringBookImpl _$$CommonStoringBookImplFromJson(
        Map<String, dynamic> json) =>
    _$CommonStoringBookImpl(
      isbn: json['isbn'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      itemCaption: json['itemCaption'] as String?,
      itemPrice: json['itemPrice'] as int?,
      largeImageUrl: json['largeImageUrl'] as String?,
      mediumImageUrl: json['mediumImageUrl'] as String?,
      publisherName: json['publisherName'] as String?,
    );

Map<String, dynamic> _$$CommonStoringBookImplToJson(
        _$CommonStoringBookImpl instance) =>
    <String, dynamic>{
      'isbn': instance.isbn,
      'title': instance.title,
      'author': instance.author,
      'itemCaption': instance.itemCaption,
      'itemPrice': instance.itemPrice,
      'largeImageUrl': instance.largeImageUrl,
      'mediumImageUrl': instance.mediumImageUrl,
      'publisherName': instance.publisherName,
    };
