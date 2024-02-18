// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      isbn: json['isbn'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      itemCaption: json['itemCaption'] as String?,
      itemPrice: json['itemPrice'] as int?,
      imageUrl: json['imageUrl'] as String?,
      mediumImageUrl: json['mediumImageUrl'] as String?,
      publisherName: json['publisherName'] as String?,
      numberOfStored: json['numberOfStored'] as int?,
      storedTime:
          const TimestampConverter().fromJson(json['storedTime'] as Timestamp?),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'isbn': instance.isbn,
      'title': instance.title,
      'author': instance.author,
      'itemCaption': instance.itemCaption,
      'itemPrice': instance.itemPrice,
      'imageUrl': instance.imageUrl,
      'mediumImageUrl': instance.mediumImageUrl,
      'publisherName': instance.publisherName,
      'numberOfStored': instance.numberOfStored,
      'storedTime': const TimestampConverter().toJson(instance.storedTime),
    };
