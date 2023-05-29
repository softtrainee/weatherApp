import 'package:json_annotation/json_annotation.dart';

import '../lat_lng_data/lat_lng_data.dart';

part 'city_data.g.dart';

@JsonSerializable(explicitToJson: true)
class CityData {
  @JsonKey(name: "id")
  num? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "sunrise")
  num? sunrise;
  @JsonKey(name: "sunset")
  num? sunset;
  @JsonKey(name: "coord")
  LatLngData? cityLatLng;

  CityData(
      {this.id,
      this.name,
      this.country,
      this.sunrise,
      this.sunset,
      this.cityLatLng});

  factory CityData.fromJson(Map<String, dynamic> json) =>
      _$CityDataFromJson(json);

  Map<String, dynamic> toJson() => _$CityDataToJson(this);
}
