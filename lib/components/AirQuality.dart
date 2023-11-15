import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/city.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/widgets/air_quality/AirQualityNow.dart';
import 'package:previsao_do_tempo/widgets/air_quality/PollutionGases.dart';

class AirQuality extends StatefulWidget {
  final City city;

  const AirQuality({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  State<AirQuality> createState() => _AirQualityState();
}

class _AirQualityState extends State<AirQuality> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: colors["pink-background"],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AirQualityNow(
            city: widget.city,
          ),
          PollutionGases(
            airPollution: widget.city.airPollution!,
          ),
        ],
      ),
    );
  }
}
