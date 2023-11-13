import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/widgets/InputField.dart';
import 'package:previsao_do_tempo/widgets/weather/DaysWeather.dart';
import 'package:previsao_do_tempo/widgets/weather/TodayWeather.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.cityController,
  });

  final TextEditingController cityController;

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
          InputField(
            hintText: "Search city",
            textController: cityController,
          ),
          const TodayWeather(),
          const DaysWeather(),
        ],
      ),
    );
  }
}
