import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:previsao_do_tempo/models/weather_by_time.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/utils/converse_functions.dart';

class WeatherByTimeApiService {
  final String baseUrl = "http://api.openweathermap.org/data/2.5/forecast";

  Future<List<WeatherByTime>> getWeatherByTimeList(
      String date, double latitude, double longitude) async {
    final response = await http
        .get(Uri.parse("$baseUrl?lat=$latitude&lon=$longitude&appid=$apiKey"));

    final jsonResponse = jsonDecode(response.body);

    List<WeatherByTime> weatherByTimeList = [];

    for (var item in jsonResponse["list"]) {
      String formattedDate = item["dt_txt"].toString().substring(0, 10);

      if (formattedDate == date) {
        weatherByTimeList.add(WeatherByTime(
          hour: item["dt_txt"].toString().substring(11, 16),
          iconId: item["weather"][0]["icon"],
          minTemperature:
              kelvinToCelsiusDouble(item["main"]["temp_min"].toDouble()),
          maxTemperature:
              kelvinToCelsiusDouble(item["main"]["temp_max"].toDouble()),
        ));
      }
    }

    return weatherByTimeList;
  }
}
