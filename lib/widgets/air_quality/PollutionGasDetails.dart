import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/air_quality_dict.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/utils/gases_dict.dart';

class PollutionGasDetails extends StatefulWidget {
  final String gasName;
  final int airQualityLevel;
  final double gasConcentration;

  const PollutionGasDetails({
    Key? key,
    required this.gasName,
    required this.airQualityLevel,
    required this.gasConcentration,
  }) : super(key: key);

  @override
  State<PollutionGasDetails> createState() => _PollutionGasDetailsState();
}

class _PollutionGasDetailsState extends State<PollutionGasDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 140,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: getColorAirQuality(widget.airQualityLevel),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              containerByGasName[widget.gasName]!,
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: widget.gasConcentration.toStringAsFixed(2),
            style: TextStyle(
              color: colors["pink-letter"],
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: " μg/m",
                style: TextStyle(
                  color: colors["pink-letter"],
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              WidgetSpan(
                child: Transform.translate(
                  offset: const Offset(2, -4),
                  child: Text("3",
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: colors["pink-letter"],
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
