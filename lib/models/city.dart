import 'package:previsao_do_tempo/models/weather.dart';

class City {
  final String name;
  final double latitude;
  final double longitude;
  final String countryCode;
  Weather? currentWeather;

  City({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.countryCode,
    this.currentWeather,
  });
}
