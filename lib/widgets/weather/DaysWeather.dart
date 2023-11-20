import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/weather_by_time.dart';
import 'package:previsao_do_tempo/models/weather_dto.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/utils/converse_functions.dart';

class DaysWeather extends StatefulWidget {
  final Map<String, WeatherDTO> weatherByDay;
  final Map<String, List<WeatherByTime>> weatherByTime;

  const DaysWeather({
    Key? key,
    required this.weatherByDay,
    required this.weatherByTime,
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
          day: value.date,
          minTemperature: value.minTemperature,
          maxTemperature: value.maxTemperature,
          iconId: value.iconId,
          weatherByTime: widget.weatherByTime[value.date]!,
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
  final String iconId;
  final List<WeatherByTime> weatherByTime;

  const RowWeather({
    Key? key,
    required this.day,
    required this.minTemperature,
    required this.maxTemperature,
    required this.iconId,
    required this.weatherByTime,
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
          width: 164,
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
                getWeekDay(widget.day),
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
        SizedBox(
          width: 32,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/weather-in-a-day",
                arguments: widget.weatherByTime,
              );
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
