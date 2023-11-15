import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/air_pollution.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/utils/quality_level_by_gas.dart';
import 'package:previsao_do_tempo/widgets/air_quality/PollutionGasDetails.dart';

class PollutionGases extends StatefulWidget {
  final AirPollution airPollution;

  const PollutionGases({
    Key? key,
    required this.airPollution,
  }) : super(key: key);

  @override
  State<PollutionGases> createState() => _PollutionGasesState();
}

class _PollutionGasesState extends State<PollutionGases> {
  List<PollutionGasDetails> getRows() {
    List<PollutionGasDetails> rows = [];

    widget.airPollution.gases.forEach((key, value) {
      rows.add(
        PollutionGasDetails(
          gasName: key,
          airQualityLevel: QualityLevelByGas.getQualityLevelByGas(key, value),
          gasConcentration: value,
        ),
      );
    });

    return rows;
  }

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
          ...getRows(),
        ],
      ),
    );
  }
}
