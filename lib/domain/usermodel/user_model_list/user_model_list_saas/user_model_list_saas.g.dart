// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_list_saas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModelListSaas _$UserModelListSaasFromJson(Map<String, dynamic> json) =>
    UserModelListSaas(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserModelListSaasToJson(UserModelListSaas instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
