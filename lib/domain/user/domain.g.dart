// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      userId: json['userId'] as String,
      isCanGetTodaysBook: json['isCanGetTodaysBook'] as bool,
      userName: json['userName'] as String?,
      userIcon: json['userIcon'] as String?,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'isCanGetTodaysBook': instance.isCanGetTodaysBook,
      'userName': instance.userName,
      'userIcon': instance.userIcon,
    };
