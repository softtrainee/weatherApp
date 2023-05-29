import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/model/res_current_weather_model/res_current_weather_model.dart';
import 'package:weather_app/model/res_forecast_model/res_forecast_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(false) bool loaderStatus,
    Position? position,
    ResCurrentWeatherModel? weatherModel,
    ResForecastModel? relatedWeatherModel,
  }) = _HomeState;
}
