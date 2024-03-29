import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/city.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

import 'TodayWeatherDescription.dart';
import 'TodayWeatherDetails.dart';

class TodayWeather extends StatefulWidget {
  final City city;

  const TodayWeather({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  State<TodayWeather> createState() => _TodayWeatherState();
}

class _TodayWeatherState extends State<TodayWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
      height: 300,
      decoration: BoxDecoration(
        color: colors["pink-container"],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TodayWeatherDescription(
            city: widget.city,
          ),
          TodayWeatherDetails(
            currentWeather: widget.city.currentWeather!,
          ),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/air-quality",
                  arguments: widget.city,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colors["purple-button"],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "See air quality",
                style: TextStyle(
                  color: colors["white"],
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
