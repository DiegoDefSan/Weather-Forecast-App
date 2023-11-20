import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/models/city.dart';
import 'package:previsao_do_tempo/services/city_api_service.dart';
import 'package:previsao_do_tempo/utils/constants.dart';
import 'package:previsao_do_tempo/widgets/InputField.dart';
import 'package:previsao_do_tempo/widgets/weather/DaysWeather.dart';
import 'package:previsao_do_tempo/widgets/weather/TodayWeather.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String cityName = "rio_de_janeiro";

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: CityApiService().getCity(cityName),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Text("None");
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.active:
            return const Text("Active");
          case ConnectionState.done:
            if (snapshot.hasData) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: colors["pink-background"],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InputField(
                      hintText: "Search city",
                      onTextChanged: (newText) {
                        setState(() {
                          cityName = newText;
                        });
                      },
                    ),
                    TodayWeather(
                      city: snapshot.data as City,
                    ),
                    DaysWeather(
                      weatherByDay: snapshot.data!.weatherByDay!,
                      weatherByTime: snapshot.data!.weatherByTime!,
                    ),
                  ],
                ),
              );
            } else {
              return const Text("Done");
            }
        }
      },
    );
  }
}
