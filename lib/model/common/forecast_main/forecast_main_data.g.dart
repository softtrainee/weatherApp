// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_main_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastMain _$ForecastMainFromJson(Map<String, dynamic> json) => ForecastMain(
      temp: json['temp'] as num?,
      tempMax: json['temp_max'] as num?,
      tempMin: json['temp_min'] as num?,
    );

Map<String, dynamic> _$ForecastMainToJson(ForecastMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };
