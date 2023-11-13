import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class TodayWeatherDescription extends StatelessWidget {
  const TodayWeatherDescription({
    super.key,
  });

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
                "Sunny",
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Río de Janeiro, BR",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: colors["pink-letter"],
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Saturday, 11 Nov",
                      style: TextStyle(
                        color: colors["pink-letter"],
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  "30 °C",
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
