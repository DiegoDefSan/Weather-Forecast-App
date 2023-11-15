import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/weather.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class TodayWeatherDetails extends StatefulWidget {
  final Weather currentWeather;

  const TodayWeatherDetails({
    Key? key,
    required this.currentWeather,
  }) : super(key: key);

  @override
  State<TodayWeatherDetails> createState() => _TodayWeatherDetailsState();
}

class _TodayWeatherDetailsState extends State<TodayWeatherDetails> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WeatherDetail(
            iconId: "precipitation",
            value: "${widget.currentWeather.precipitationProbability}%",
          ),
          WeatherDetail(
            iconId: "humidity",
            value: "${widget.currentWeather.humidity}%",
          ),
          WeatherDetail(
            iconId: "wind",
            value: "${widget.currentWeather.windSpeed} km/h",
          ),
        ],
      ),
    );
  }
}

class WeatherDetail extends StatefulWidget {
  final String value;
  final String iconId;

  const WeatherDetail({
    Key? key,
    required this.value,
    required this.iconId,
  }) : super(key: key);

  @override
  State<WeatherDetail> createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          child: Image.asset(
            "assets/images/weather_icons/${widget.iconId}.png",
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          child: Text(
            widget.value,
            style: TextStyle(
              color: colors["pink-letter"],
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
