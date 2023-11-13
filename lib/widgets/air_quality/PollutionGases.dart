import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/widgets/air_quality/PollutionGasDetails.dart';

class PollutionGases extends StatelessWidget {
  const PollutionGases({
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
      height: 480,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pollution gases",
                style: TextStyle(
                  color: colors["pink-letter"],
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Concentration",
                style: TextStyle(
                  color: colors["pink-letter"],
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const PollutionGasDetails(
            gasName: "SO2",
            airQualityLevel: 1,
            gasConcentration: 0.64,
          ),
          const PollutionGasDetails(
            gasName: "NO2",
            airQualityLevel: 2,
            gasConcentration: 0.77,
          ),
          const PollutionGasDetails(
            gasName: "PM10",
            airQualityLevel: 5,
            gasConcentration: 0.54,
          ),
          const PollutionGasDetails(
            gasName: "PM2.5",
            airQualityLevel: 3,
            gasConcentration: 0.50,
          ),
          const PollutionGasDetails(
            gasName: "O3",
            airQualityLevel: 4,
            gasConcentration: 68.66,
          ),
          const PollutionGasDetails(
            gasName: "CO",
            airQualityLevel: 3,
            gasConcentration: 201.94,
          ),
          const PollutionGasDetails(
            gasName: "NH3",
            airQualityLevel: 1,
            gasConcentration: 201.94,
          ),
          const PollutionGasDetails(
            gasName: "CO2",
            airQualityLevel: 3,
            gasConcentration: 0.12,
          ),
        ],
      ),
    );
  }
}
