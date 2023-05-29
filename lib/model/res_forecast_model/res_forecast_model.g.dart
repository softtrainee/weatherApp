// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResForecastModel _$ResForecastModelFromJson(Map<String, dynamic> json) =>
    ResForecastModel(
      cityModel: json['city'] == null
          ? null
          : CityData.fromJson(json['city'] as Map<String, dynamic>),
      forecastDataList: (json['list'] as List<dynamic>?)
          ?.map((e) => ForecastData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResForecastModelToJson(ResForecastModel instance) =>
    <String, dynamic>{
      'list': instance.forecastDataList?.map((e) => e.toJson()).toList(),
      'city': instance.cityModel?.toJson(),
    };

ForecastData _$ForecastDataFromJson(Map<String, dynamic> json) => ForecastData(
      dt: json['dt'] as num?,
      dtText: json['dt_txt'] as String?,
      forecastMain: json['main'] == null
          ? null
          : ForecastMain.fromJson(json['main'] as Map<String, dynamic>),
      list: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastDataToJson(ForecastData instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'dt_txt': instance.dtText,
      'main': instance.forecastMain?.toJson(),
      'weather': instance.list?.map((e) => e.toJson()).toList(),
    };
