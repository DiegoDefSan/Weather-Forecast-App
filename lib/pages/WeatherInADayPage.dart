import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/components/WeatherInADay.dart';
import 'package:previsao_do_tempo/models/weather_by_time.dart';
import 'package:previsao_do_tempo/widgets/Navbar.dart';

class WeatherInADayPage extends StatelessWidget {
  const WeatherInADayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<WeatherByTime> arguments =
        ModalRoute.of(context)!.settings.arguments as List<WeatherByTime>;

    return Scaffold(
      appBar: const Navbar(title: "Weather a Day"),
      body: WeatherInADay(
        weatherByTime: arguments,
      ),
    );
  }
}
