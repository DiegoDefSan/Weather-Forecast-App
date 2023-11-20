import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/weather_by_time.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class WeatherInADay extends StatefulWidget {
  final List<WeatherByTime> weatherByTime;

  const WeatherInADay({
    Key? key,
    required this.weatherByTime,
  }) : super(key: key);

  @override
  State<WeatherInADay> createState() => _WeatherInADayState();
}

class _WeatherInADayState extends State<WeatherInADay> {
  List<RowWeather> getRows() {
    List<RowWeather> rows = [];

    widget.weatherByTime.forEach((element) {
      rows.add(
        RowWeather(
          hour: element.hour,
          minTemperature: element.minTemperature,
          maxTemperature: element.maxTemperature,
          iconId: element.iconId,
        ),
      );
    });

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: colors["pink-background"],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 600,
            decoration: BoxDecoration(
              color: colors["blue-container"],
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: getRows(),
            ),
          ),
        ],
      ),
    );
  }
}

class RowWeather extends StatefulWidget {
  final String hour;
  final double minTemperature;
  final double maxTemperature;
  final String iconId;

  const RowWeather({
    Key? key,
    required this.hour,
    required this.minTemperature,
    required this.maxTemperature,
    required this.iconId,
  }) : super(key: key);

  @override
  State<RowWeather> createState() => _RowWeatherState();
}

class _RowWeatherState extends State<RowWeather> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                margin: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  "assets/images/weather_icons/${widget.iconId}.png",
                ),
              ),
              Text(
                "${widget.hour} h",
                style: TextStyle(
                  color: colors["white"],
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
