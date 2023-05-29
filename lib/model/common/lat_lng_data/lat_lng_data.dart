import 'package:json_annotation/json_annotation.dart';

part 'lat_lng_data.g.dart';

@JsonSerializable(explicitToJson: true)
class LatLngData {
  @JsonKey(name: "lat")
  num? lat;
  @JsonKey(name: "lon")
  num? lng;

  LatLngData({this.lat, this.lng});

  factory LatLngData.fromJson(Map<String, dynamic> json) =>
      _$LatLngDataFromJson(json);

  Map<String, dynamic> toJson() => _$LatLngDataToJson(this);
}
