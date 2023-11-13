import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/pages/AirQualityPage.dart';
import 'package:previsao_do_tempo/pages/ErrorRoutePage.dart';
import 'package:previsao_do_tempo/pages/HomePage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/air-quality":
        return MaterialPageRoute(builder: (_) => const AirQualityPage());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoutePage());
    }
  }
}
