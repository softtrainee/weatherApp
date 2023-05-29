// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityData _$CityDataFromJson(Map<String, dynamic> json) => CityData(
      id: json['id'] as num?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      sunrise: json['sunrise'] as num?,
      sunset: json['sunset'] as num?,
      cityLatLng: json['coord'] == null
          ? null
          : LatLngData.fromJson(json['coord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityDataToJson(CityData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'coord': instance.cityLatLng?.toJson(),
    };
