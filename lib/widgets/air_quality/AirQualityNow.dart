import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class AirQualityNow extends StatelessWidget {
  const AirQualityNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors["pink-container"],
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
      height: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: colors["poor-quality"],
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Text(
                "Poor",
                style: TextStyle(
                  color: colors["poor-quality"],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Río de Janeiro, BR",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: colors["pink-letter"],
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
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
          ),
        ],
      ),
    );
  }
}
