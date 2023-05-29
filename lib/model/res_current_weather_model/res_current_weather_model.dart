import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/model/common/forecast_main/forecast_main_data.dart';
import 'package:weather_app/model/common/lat_lng_data/lat_lng_data.dart';
import 'package:weather_app/model/common/weather_data/weather_data.dart';

part 'res_current_weather_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ResCurrentWeatherModel {
  @JsonKey(name: "coord")
  LatLngData? coord;
  @JsonKey(name: "weather")
  List<WeatherData>? weather;
  @JsonKey(name: "main")
  ForecastMain? main;
  @JsonKey(name: "name")
  String? name;

  ResCurrentWeatherModel({this.coord, this.weather, this.main, this.name});

  factory ResCurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$ResCurrentWeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResCurrentWeatherModelToJson(this);
}
