import 'package:previsao_do_tempo/models/city.dart';

class AirPollution {
  final int qualityLevel;
  final Map<String, double> gases;
  City? city;

  AirPollution({
    required this.qualityLevel,
    required this.gases,
    this.city,
  });
}
