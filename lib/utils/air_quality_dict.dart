import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

const Map<int, String> airQualityIndex = {
  1: "Good",
  2: "Fair",
  3: "Moderate",
  4: "Poor",
  5: "Very Poor",
};

Color getColorAirQuality(int level) {
  String airQuality = airQualityIndex[level]!;

  // airQuality to lowercase and replace spaces with dashes
  airQuality = airQuality.toLowerCase().replaceAll(" ", "-");

  // airQuality add -quality to the end
  airQuality = "$airQuality-quality";

  return colors[airQuality]!;
}
