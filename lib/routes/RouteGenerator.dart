import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/pages/AirQuality.dart';
import 'package:previsao_do_tempo/pages/ErrorRoute.dart';
import 'package:previsao_do_tempo/pages/Home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const Home());
      case "/air-quality":
        return MaterialPageRoute(builder: (_) => const AirQuality());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
