class WeatherDTO {
  final String date;
  String iconId;
  int minTemperature;
  int maxTemperature;

  WeatherDTO({
    required this.date,
    required this.iconId,
    required this.minTemperature,
    required this.maxTemperature,
  });
}
