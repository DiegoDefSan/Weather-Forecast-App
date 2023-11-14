import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/weather_dto.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/utils/converse_tempeture.dart';

class DaysWeather extends StatefulWidget {
  final Map<String, WeatherDTO> weatherByDay;

  const DaysWeather({
    Key? key,
    required this.weatherByDay,
  }) : super(key: key);

  @override
  State<DaysWeather> createState() => _DaysWeatherState();
}

class _DaysWeatherState extends State<DaysWeather> {
  List<RowWeather> getRows() {
    List<RowWeather> rows = [];

    widget.weatherByDay.forEach((key, value) {
      rows.add(
        RowWeather(
          day: getWeekDay(value.date),
          minTemperature: value.minTemperature,
          maxTemperature: value.maxTemperature,
        ),
      );
    });

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors["blue-container"],
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: getRows(),
      ),
    );
  }
}

class RowWeather extends StatefulWidget {
  final String day;
  final int minTemperature;
  final int maxTemperature;

  const RowWeather({
    Key? key,
    required this.day,
    required this.minTemperature,
    required this.maxTemperature,
  }) : super(key: key);

  @override
  State<RowWeather> createState() => _RowWeatherState();
}

class _RowWeatherState extends State<RowWeather> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 164,
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: colors["pink-letter"],
                ),
              ),
              Text(
                widget.day,
                style: TextStyle(
                  color: colors["white"],
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        Text(
          "${widget.minTemperature}°/${widget.maxTemperature}°",
          style: TextStyle(
            color: colors["white"],
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
