import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:previsao_do_tempo/models/air_pollution.dart';

import 'package:previsao_do_tempo/models/city.dart';
import 'package:previsao_do_tempo/models/weather.dart';
import 'package:previsao_do_tempo/models/weather_by_time.dart';
import 'package:previsao_do_tempo/models/weather_dto.dart';
import 'package:previsao_do_tempo/services/airPollution_api_service.dart';
import 'package:previsao_do_tempo/services/weatherByTime_api_service.dart';
import 'package:previsao_do_tempo/services/weatherDTO_api_service.dart';
import 'package:previsao_do_tempo/services/weather_api_service.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class CityApiService {
  final String baseUrl = "http://api.openweathermap.org/geo/1.0/";

  Future<City> getCity(String cityName) async {
    final responseCity = await http
        .get(Uri.parse("${baseUrl}direct?q=$cityName&limit=1&appid=$apiKey"));

    final jsonResponse = jsonDecode(responseCity.body);

    if (jsonResponse.length == 0) {
      throw Exception("City not found");
    }

    final Map<String, dynamic> cityData = jsonResponse[0];

    City city = City(
      name: cityData["name"],
      latitude: cityData["lat"],
      longitude: cityData["lon"],
      countryCode: cityData["country"],
    );

    Weather currentWeather =
        await WeatherApiService().getWeather(city.latitude, city.longitude);

    Map<String, WeatherDTO> weatherByDay =
        await WeatherDTOApiService().getWeatherList(
      city.latitude,
      city.longitude,
    );

    Map<String, List<WeatherByTime>> weatherByTime = {};

    for (var item in weatherByDay.keys) {
      List<WeatherByTime> weatherByTimeList =
          await WeatherByTimeApiService().getWeatherByTimeList(
        item,
        city.latitude,
        city.longitude,
      );

      weatherByTime[item] = weatherByTimeList;
    }

    AirPollution airPollution = await AirPollutionApiService()
        .getAirPollution(city.latitude, city.longitude);

    city.currentWeather = currentWeather;
    city.weatherByDay = weatherByDay;
    city.airPollution = airPollution;
    city.weatherByTime = weatherByTime;

    return city;
  }
}
