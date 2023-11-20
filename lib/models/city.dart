import 'package:previsao_do_tempo/models/air_pollution.dart';
import 'package:previsao_do_tempo/models/weather.dart';
import 'package:previsao_do_tempo/models/weather_by_time.dart';
import 'package:previsao_do_tempo/models/weather_dto.dart';

class City {
  final String name;
  final double latitude;
  final double longitude;
  final String countryCode;
  Weather? currentWeather;
  Map<String, WeatherDTO>? weatherByDay;
  AirPollution? airPollution;
  Map<String, List<WeatherByTime>>? weatherByTime;

  City({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.countryCode,
    this.currentWeather,
    this.weatherByDay,
    this.airPollution,
    this.weatherByTime,
  });
}
