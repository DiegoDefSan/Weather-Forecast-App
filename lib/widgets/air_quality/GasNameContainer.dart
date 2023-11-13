import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class GasNameContainer extends StatefulWidget {
  final String gasName;
  final String subIndex;

  const GasNameContainer({
    Key? key,
    required this.gasName,
    required this.subIndex,
  }) : super(key: key);

  @override
  State<GasNameContainer> createState() => _GasNameContainerState();
}

class _GasNameContainerState extends State<GasNameContainer> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: widget.gasName,
        style: TextStyle(
          color: colors["pink-letter"],
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(
            text: widget.subIndex,
            style: TextStyle(
              color: colors["pink-letter"],
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
