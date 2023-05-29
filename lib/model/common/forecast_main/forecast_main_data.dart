import 'package:json_annotation/json_annotation.dart';

part 'forecast_main_data.g.dart';

@JsonSerializable(explicitToJson: true)
class ForecastMain {
  @JsonKey(name: "temp")
  num? temp;
  @JsonKey(name: "temp_min")
  num? tempMin;
  @JsonKey(name: "temp_max")
  num? tempMax;

  ForecastMain({this.temp, this.tempMax, this.tempMin});

  factory ForecastMain.fromJson(Map<String, dynamic> json) =>
      _$ForecastMainFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastMainToJson(this);
}
