// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Setting _$SettingFromJson(Map<String, dynamic> json) => Setting(
      json['region'] as String,
      json['language'] as String,
      json['timeZone'] as String,
      json['firstUse'] as bool,
    );

Map<String, dynamic> _$SettingToJson(Setting instance) => <String, dynamic>{
      'region': instance.region,
      'language': instance.language,
      'timeZone': instance.timeZone,
      'firstUse': instance.firstUse,
    };
