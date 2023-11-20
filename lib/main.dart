import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/pages/AirQualityPage.dart';
import 'package:previsao_do_tempo/pages/HomePage.dart';
import 'package:previsao_do_tempo/pages/WeatherInADayPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Previsão do Tempo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/air-quality": (context) => const AirQualityPage(),
        "/weather-in-a-day": (context) => const WeatherInADayPage(),
      },
    );
  }
}
