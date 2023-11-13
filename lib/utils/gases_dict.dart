import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/widgets/air_quality/GasNameContainer.dart';

const Map<String, Widget> containerByGasName = {
  "SO2": GasNameContainer(gasName: "SO", subIndex: "2"),
  "NO2": GasNameContainer(gasName: "NO", subIndex: "2"),
  "PM10": GasNameContainer(gasName: "PM", subIndex: "10"),
  "PM2.5": GasNameContainer(gasName: "PM", subIndex: "2.5"),
  "O3": GasNameContainer(gasName: "O", subIndex: "3"),
  "CO": GasNameContainer(gasName: "CO", subIndex: ""),
  "CO2": GasNameContainer(gasName: "CO", subIndex: "2"),
  "NH3": GasNameContainer(gasName: "NH", subIndex: "3"),
};
