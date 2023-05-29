// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_current_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResCurrentWeatherModel _$ResCurrentWeatherModelFromJson(
        Map<String, dynamic> json) =>
    ResCurrentWeatherModel(
      coord: json['coord'] == null
          ? null
          : LatLngData.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: json['main'] == null
          ? null
          : ForecastMain.fromJson(json['main'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ResCurrentWeatherModelToJson(
        ResCurrentWeatherModel instance) =>
    <String, dynamic>{
      'coord': instance.coord?.toJson(),
      'weather': instance.weather?.map((e) => e.toJson()).toList(),
      'main': instance.main?.toJson(),
      'name': instance.name,
    };
