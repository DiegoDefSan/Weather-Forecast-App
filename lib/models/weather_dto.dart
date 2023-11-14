class WeatherDTO {
  final String date;
  String description;
  int minTemperature;
  int maxTemperature;

  WeatherDTO({
    required this.date,
    required this.description,
    required this.minTemperature,
    required this.maxTemperature,
  });
}
