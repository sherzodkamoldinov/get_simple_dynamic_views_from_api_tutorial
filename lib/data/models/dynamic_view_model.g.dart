// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DynamicViewModel _$DynamicViewModelFromJson(Map<String, dynamic> json) =>
    DynamicViewModel(
      title: json['title'] as String? ?? '',
      color: json['color'] as String? ?? '',
      group: json['group'] as String? ?? '',
      height: json['height'] as int? ?? 0,
      sort: json['sort'] as int? ?? -1,
      type: json['type'] as String? ?? '',
      width: json['width'] as int? ?? 0,
    );

Map<String, dynamic> _$DynamicViewModelToJson(DynamicViewModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sort': instance.sort,
      'group': instance.group,
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'type': instance.type,
    };
