import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:previsao_do_tempo/models/air_pollution.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class AirPollutionApiService {
  final String baseUrl = "http://api.openweathermap.org/data/2.5/air_pollution";

  Future<AirPollution> getAirPollution(
      double latitude, double longitude) async {
    final response = await http
        .get(Uri.parse("$baseUrl?lat=$latitude&lon=$longitude&appid=$apiKey"));

    if (response.statusCode != 200) {
      throw Exception("Failed to load air quality");
    }

    final jsonResponse = jsonDecode(response.body);

    final Map<String, dynamic> airQualityData = jsonResponse["list"][0];

    final Map<String, double> gases = {
      "CO": airQualityData["components"]["co"].toDouble(),
      "NO": airQualityData["components"]["no"].toDouble(),
      "NO2": airQualityData["components"]["no2"].toDouble(),
      "O3": airQualityData["components"]["o3"].toDouble(),
      "SO2": airQualityData["components"]["so2"].toDouble(),
      "PM2.5": airQualityData["components"]["pm2_5"].toDouble(),
      "PM10": airQualityData["components"]["pm10"].toDouble(),
      "NH3": airQualityData["components"]["nh3"].toDouble(),
    };

    return AirPollution(
      qualityLevel: airQualityData["main"]["aqi"],
      gases: gases,
    );
  }
}
