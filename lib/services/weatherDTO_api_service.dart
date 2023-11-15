import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:previsao_do_tempo/models/weather_dto.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/utils/converse_tempeture.dart';

class WeatherDTOApiService {
  final String baseUrl = "http://api.openweathermap.org/data/2.5/forecast";

  Future<Map<String, WeatherDTO>> getWeatherList(
      double latitude, double longitude) async {
    final response = await http
        .get(Uri.parse("$baseUrl?lat=$latitude&lon=$longitude&appid=$apiKey"));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      List<WeatherDTO> weatherList = [];

      for (var item in jsonResponse["list"]) {
        weatherList.add(WeatherDTO(
          date: convertDateTime(item["dt_txt"]),
          description: item["weather"][0]["main"],
          minTemperature: kelvinToCelsius(item["main"]["temp_min"].toDouble()),
          maxTemperature: kelvinToCelsius(item["main"]["temp_max"].toDouble()),
        ));
      }

      Map<String, WeatherDTO> weatherMap = {};

      int hours = 0;
      DateTime now = DateTime.now();
      String formattedDate =
          "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";

      for (var item in weatherList) {
        if (weatherMap.containsKey(item.date)) {
          hours += 3;

          if (weatherMap[item.date]!.minTemperature > item.minTemperature) {
            weatherMap[item.date]!.minTemperature = item.minTemperature;
          }

          if (weatherMap[item.date]!.maxTemperature < item.maxTemperature) {
            weatherMap[item.date]!.maxTemperature = item.maxTemperature;
          }

          if (hours == 12) {
            weatherMap[item.date]!.description = item.description;
          }
        } else {
          if (item.date != formattedDate) {
            weatherMap[item.date] = item;
            hours = 0;
          }
        }
      }

      return weatherMap;
    } else {
      throw Exception("Failed to load weather");
    }
  }
}
