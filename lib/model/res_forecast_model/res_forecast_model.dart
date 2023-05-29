import 'package:json_annotation/json_annotation.dart';

import '../common/city_data/city_data.dart';
import '../common/forecast_main/forecast_main_data.dart';
import '../common/weather_data/weather_data.dart';

part 'res_forecast_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ResForecastModel {
  @JsonKey(name: "list")
  List<ForecastData>? forecastDataList;
  @JsonKey(name: "city")
  CityData? cityModel;

  ResForecastModel({this.cityModel, this.forecastDataList});

  factory ResForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ResForecastModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResForecastModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForecastData {
  @JsonKey(name: "dt")
  num? dt;
  @JsonKey(name: "dt_txt")
  String? dtText;
  @JsonKey(name: "main")
  ForecastMain? forecastMain;
  @JsonKey(name: "weather")
  List<WeatherData>? list;

  ForecastData({this.dt, this.dtText, this.forecastMain, this.list});

  factory ForecastData.fromJson(Map<String, dynamic> json) =>
      _$ForecastDataFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDataToJson(this);
}
