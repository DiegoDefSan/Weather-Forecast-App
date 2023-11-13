import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/widgets/air_quality/AirQualityNow.dart';
import 'package:previsao_do_tempo/widgets/air_quality/PollutionGases.dart';

class AirQuality extends StatelessWidget {
  const AirQuality({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: colors["pink-background"],
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AirQualityNow(),
          PollutionGases(),
        ],
      ),
    );
  }
}
