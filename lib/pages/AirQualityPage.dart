import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/widgets/Navbar.dart';

import '../components/AirQuality.dart';

class AirQualityPage extends StatelessWidget {
  const AirQualityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Navbar(title: "Air Quality"),
      body: AirQuality(),
    );
  }
}
