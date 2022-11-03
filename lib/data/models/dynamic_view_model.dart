import 'package:json_annotation/json_annotation.dart';

part 'dynamic_view_model.g.dart';

// "dynamic_views": [
// {
// "title": "Just Square",
// "sort": 1,
// "group": "COMMON",
// "width": 200,
// "height": 200,
// "color": "#000000",
// "type": "container"
// },

@JsonSerializable()
class DynamicViewModel {
  DynamicViewModel({
    required this.title,
    required this.color,
    required this.group,
    required this.height,
    required this.sort,
    required this.type,
    required this.width,
  });

  @JsonKey(defaultValue: '', name: 'title')
  String title;

  @JsonKey(defaultValue: -1, name: 'sort')
  int sort;

  @JsonKey(defaultValue: '', name: 'group')
  String group;

  @JsonKey(defaultValue: 0, name: 'width')
  int width;

  @JsonKey(defaultValue: 0, name: 'height')
  int height;

  @JsonKey(defaultValue: '', name: 'color')
  String color;

  @JsonKey(defaultValue: '', name: 'type')
  String type;

  factory DynamicViewModel.fromJson(Map<String, dynamic> json) =>
      _$DynamicViewModelFromJson(json);

  Map<String, dynamic> toJson() => _$DynamicViewModelToJson(this);
}
