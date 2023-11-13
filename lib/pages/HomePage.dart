import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/widgets/Navbar.dart';

import '../components/Home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const Navbar(title: "Weather app"),
      body: Home(cityController: cityController),
    );
  }
}
