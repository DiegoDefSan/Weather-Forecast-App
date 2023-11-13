import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

import 'TodayWeatherDescription.dart';
import 'TodayWeatherDetails.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({super.key});

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
          const TodayWeatherDescription(),
          const TodayWeatherDetails(),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/air-quality");
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
