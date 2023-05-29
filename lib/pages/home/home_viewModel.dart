import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/app_config/api_request.dart';
import 'package:weather_app/model/res_current_weather_model/res_current_weather_model.dart';

import 'state/home_state.dart';

final homeViewModel =
    StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
        (ref) => HomeNotifier());

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(HomeState());

  Future<void> initData() async {
    state = state.copyWith(loaderStatus: true);
    await getLocationWeather();
    await getLastLocationWeather();
    state = state.copyWith(loaderStatus: false);
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    print("_determinPosition");
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<void> setLocation() async {
    print('getLocationWeather Executed');
    try {
      var tempPosition = await _determinePosition();
      state = state.copyWith(position: tempPosition);
    } catch (e) {
      print('Error getting location: $e');
    }
  }

  Future<void> getLocationWeather() async {
    if (state.position == null) {
      await setLocation();
    }

    if (state.position != null) {
      final double latitude = state.position!.latitude;
      final double longitude = state.position!.longitude;

      try {
        ResCurrentWeatherModel response =
            await ApiRequest.fetchCurrentWeatherData(
                latitude: latitude, longitude: longitude);
        state = state.copyWith(weatherModel: response);
      } catch (e) {
        print('Error fetching weather data: $e');
      }
    }
  }

  Future<void> getLastLocationWeather() async {
    if (state.position == null) {
      await setLocation();
    }

    if (state.position != null) {
      final double latitude = state.position!.latitude;
      final double longitude = state.position!.longitude;

      try {
        print('positionDATATAT $latitude  $longitude');

        final response = await ApiRequest.fetchRelatedForecastData(
            latitude: latitude, longitude: longitude);
        state = state.copyWith(relatedWeatherModel: response);
      } catch (e) {
        print('Error_Related_data: $e');
      }
    }
  }
}
