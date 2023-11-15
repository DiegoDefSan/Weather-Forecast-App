import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/widgets/air_quality/GasNameContainer.dart';

const Map<String, Widget> containerByGasName = {
  "CO": GasNameContainer(gasName: "CO", subIndex: ""),
  "NO": GasNameContainer(gasName: "NO", subIndex: ""),
  "NO2": GasNameContainer(gasName: "NO", subIndex: "2"),
  "O3": GasNameContainer(gasName: "O", subIndex: "3"),
  "SO2": GasNameContainer(gasName: "SO", subIndex: "2"),
  "PM2.5": GasNameContainer(gasName: "PM", subIndex: "2.5"),
  "PM10": GasNameContainer(gasName: "PM", subIndex: "10"),
  "NH3": GasNameContainer(gasName: "NH", subIndex: "3"),
};
