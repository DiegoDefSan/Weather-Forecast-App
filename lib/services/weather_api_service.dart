import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:previsao_do_tempo/models/weather.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/utils/converse_tempeture.dart';

class WeatherApiService {
  final String baseUrl = "http://api.openweathermap.org/data/2.5/forecast";

  Future<Weather> getWeather(double latitude, double longitude) async {
    final response = await http
        .get(Uri.parse("$baseUrl?lat=$latitude&lon=$longitude&appid=$apiKey"));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      final Map<String, dynamic> weatherData = jsonResponse["list"][0];

      Weather weather = Weather(
        date: DateTime.fromMillisecondsSinceEpoch(weatherData["dt"] * 1000),
        currentTemp: kelvinToCelsius(weatherData["main"]["temp"]),
        precipitationProbability: (weatherData["pop"] * 100).toInt(),
        humidity: weatherData["main"]["humidity"],
        windSpeed: (weatherData["wind"]["speed"]).toDouble(),
        description: weatherData["weather"][0]["main"],
      );

      return weather;
    } else {
      throw Exception("Failed to load weather");
    }
  }
}
