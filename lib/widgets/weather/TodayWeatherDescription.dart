import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/city.dart';
import 'package:previsao_do_tempo/models/weather.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class TodayWeatherDescription extends StatefulWidget {
  final City city;

  const TodayWeatherDescription({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  State<TodayWeatherDescription> createState() =>
      _TodayWeatherDescriptionState();
}

class _TodayWeatherDescriptionState extends State<TodayWeatherDescription> {
  Weather? currentWeather;

  @override
  void initState() {
    super.initState();
    currentWeather = widget.city.currentWeather;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: colors["purple-button"],
                ),
              ),
              Text(
                widget.city.currentWeather!.description,
                style: TextStyle(
                  color: colors["pink-letter"],
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      //"Rio de Janeiro, BR",
                      "${widget.city.name}, ${widget.city.countryCode}",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: colors["pink-letter"],
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      //"Today, 12/07/2021",
                      "Today, ${currentWeather!.date.day}/${currentWeather!.date.month}/${currentWeather!.date.year}",
                      style: TextStyle(
                        color: colors["pink-letter"],
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  "${currentWeather!.currentTemp} °C",
                  style: TextStyle(
                    color: colors["pink-letter"],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
