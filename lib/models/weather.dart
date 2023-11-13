import 'package:previsao_do_tempo/models/city.dart';

class Weather {
  final DateTime date;
  final int currentTemp;
  final double precipitationProbability;
  final int humidity;
  final double windSpeed;
  final String description;
  final City? city;

  Weather({
    required this.date,
    required this.currentTemp,
    required this.precipitationProbability,
    required this.humidity,
    required this.windSpeed,
    required this.description,
    this.city,
  });
}
