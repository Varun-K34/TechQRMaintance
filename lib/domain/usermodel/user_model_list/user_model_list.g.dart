// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModelList _$UserModelListFromJson(Map<String, dynamic> json) =>
    UserModelList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserModelListToJson(UserModelList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
