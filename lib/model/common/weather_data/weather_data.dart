import 'package:json_annotation/json_annotation.dart';

part 'weather_data.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherData {
  @JsonKey(name: "id")
  num? id;
  @JsonKey(name: "main")
  String? main;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "icon")
  String? icon;

  WeatherData({this.id, this.main, this.description, this.icon});

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDataToJson(this);
}
