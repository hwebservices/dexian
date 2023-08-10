// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wire_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WireModel _$$_WireModelFromJson(Map<String, dynamic> json) => _$_WireModel(
      firstUrl: json['firstUrl'] as String?,
      icon: json['icon'] == null
          ? null
          : Icon.fromJson(json['icon'] as Map<String, dynamic>),
      result: json['result'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_WireModelToJson(_$_WireModel instance) =>
    <String, dynamic>{
      'firstUrl': instance.firstUrl,
      'icon': instance.icon,
      'result': instance.result,
      'text': instance.text,
    };

_$_Icon _$$_IconFromJson(Map<String, dynamic> json) => _$_Icon(
      height: json['height'] as String?,
      url: json['url'] as String?,
      width: json['width'] as String?,
    );

Map<String, dynamic> _$$_IconToJson(_$_Icon instance) => <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };
