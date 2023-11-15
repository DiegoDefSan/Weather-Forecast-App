import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/city.dart';
import 'package:previsao_do_tempo/widgets/Navbar.dart';

import '../components/AirQuality.dart';

class AirQualityPage extends StatelessWidget {
  const AirQualityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final City city = ModalRoute.of(context)!.settings.arguments as City;

    return Scaffold(
      appBar: const Navbar(title: "Air Quality"),
      body: AirQuality(city: city),
    );
  }
}
