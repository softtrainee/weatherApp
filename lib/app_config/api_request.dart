import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/res_current_weather_model/res_current_weather_model.dart';
import 'package:weather_app/model/res_forecast_model/res_forecast_model.dart';

class ApiRequest {
  static const String _apiKey = "ce6d7c381bfd02dcd427749eaf8647ae";

  static Future<Map<String, dynamic>?> get({required String endpoint}) async {
    final response = await http.get(Uri.parse(endpoint));
    Map<String, dynamic>? resultData;
    try {
      final responseData = jsonDecode(response.body);
      resultData = responseData as Map<String, dynamic>;
    } catch (e) {
      throw Exception(e);
    }
    return resultData;
  }

  static Future<ResCurrentWeatherModel> fetchCurrentWeatherData(
      {required dynamic latitude, required dynamic longitude}) async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$_apiKey&units=metric';
    final response = await ApiRequest.get(endpoint: url);
    if (response != null) {
      return ResCurrentWeatherModel.fromJson(response);
    } else {
      throw Exception("Json Parsing Error");
    }
  }

  static Future<ResForecastModel> fetchRelatedForecastData(
      {required dynamic latitude, required dynamic longitude}) async {
    final url =
        'https://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longitude&cnt=5&appid=$_apiKey&units=metric';
    print("related response: ${url}");
    final response = await ApiRequest.get(endpoint: url);
    print("related response: ${response}");
    if (response != null) {
      return ResForecastModel.fromJson(response);
    } else {
      throw Exception("Json Parsing Error");
    }
  }
}
