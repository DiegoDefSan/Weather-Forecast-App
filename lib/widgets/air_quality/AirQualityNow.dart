import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/air_pollution.dart';
import 'package:previsao_do_tempo/models/city.dart';
import 'package:previsao_do_tempo/models/weather.dart';
import 'package:previsao_do_tempo/utils/air_quality_dict.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class AirQualityNow extends StatefulWidget {
  final City city;

  const AirQualityNow({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  State<AirQualityNow> createState() => _AirQualityNowState();
}

class _AirQualityNowState extends State<AirQualityNow> {
  AirPollution? airPollution;
  Weather? currentWeather;

  @override
  void initState() {
    super.initState();
    airPollution = widget.city.airPollution;
    currentWeather = widget.city.currentWeather;
  }

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
                  color: getColorAirQuality(airPollution!.qualityLevel),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Text(
                "${airQualityIndex[airPollution!.qualityLevel]}",
                style: TextStyle(
                  color: getColorAirQuality(airPollution!.qualityLevel),
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
                  "${widget.city.name}, ${widget.city.countryCode}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: colors["pink-letter"],
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Today, ${currentWeather!.date.day}/${currentWeather!.date.month}/${currentWeather!.date.year}",
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
