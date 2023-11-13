import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class TodayWeatherDetails extends StatelessWidget {
  const TodayWeatherDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WeatherDetail(
            value: "18° 30°",
          ),
          WeatherDetail(
            value: "73%",
          ),
          WeatherDetail(
            value: "1.23 km/h",
          ),
        ],
      ),
    );
  }
}

class WeatherDetail extends StatefulWidget {
  final String value;

  const WeatherDetail({
    Key? key,
    required this.value,
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
          decoration: BoxDecoration(
            color: colors["pink-letter"],
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
