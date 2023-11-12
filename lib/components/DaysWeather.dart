import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class DaysWeather extends StatelessWidget {
  const DaysWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors["blue-container"],
        borderRadius: BorderRadius.circular(24),
      ),
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 24),
      height: 300,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RowWeather(
            day: "Monday",
            minTemperature: 20,
            maxTemperature: 30,
          ),
          RowWeather(
            day: "Tuesday",
            minTemperature: 20,
            maxTemperature: 30,
          ),
          RowWeather(
            day: "Wednesday",
            minTemperature: 20,
            maxTemperature: 30,
          ),
          RowWeather(
            day: "Thursday",
            minTemperature: 20,
            maxTemperature: 30,
          ),
          RowWeather(
            day: "Friday",
            minTemperature: 20,
            maxTemperature: 30,
          ),
        ],
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
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
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
                Container(
                  child: Text(
                    widget.day,
                    style: TextStyle(
                      color: colors["white"],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Text(
              "${widget.minTemperature}°/${widget.maxTemperature}°",
              style: TextStyle(
                color: colors["white"],
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
