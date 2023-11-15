class QualityLevelByGas {
  int _getIndexLevelInSO2(double concentration) {
    if (concentration < 20) {
      return 1;
    } else if (concentration < 80) {
      return 2;
    } else if (concentration < 250) {
      return 3;
    } else if (concentration < 350) {
      return 4;
    } else {
      return 5;
    }
  }

  int _getIndexLevelInNO2(double concentration) {
    if (concentration < 40) {
      return 1;
    } else if (concentration < 70) {
      return 2;
    } else if (concentration < 150) {
      return 3;
    } else if (concentration < 200) {
      return 4;
    } else {
      return 5;
    }
  }

  int _getIndexLevelInCO(double concentration) {
    if (concentration < 4400) {
      return 1;
    } else if (concentration < 9400) {
      return 2;
    } else if (concentration < 12400) {
      return 3;
    } else if (concentration < 15400) {
      return 4;
    } else {
      return 5;
    }
  }

  int _getIndexLevelInO3(double concentration) {
    if (concentration < 60) {
      return 1;
    } else if (concentration < 100) {
      return 2;
    } else if (concentration < 140) {
      return 3;
    } else if (concentration < 180) {
      return 4;
    } else {
      return 5;
    }
  }

  int _getIndexLevelInPM10(double concentration) {
    if (concentration < 20) {
      return 1;
    } else if (concentration < 50) {
      return 2;
    } else if (concentration < 100) {
      return 3;
    } else if (concentration < 200) {
      return 4;
    } else {
      return 5;
    }
  }

  int _getIndexLevelInPM25(double concentration) {
    if (concentration < 10) {
      return 1;
    } else if (concentration < 25) {
      return 2;
    } else if (concentration < 50) {
      return 3;
    } else if (concentration < 75) {
      return 4;
    } else {
      return 5;
    }
  }

  int _getIndexLevelInNH3(double concentration) {
    return 1;
  }

  int _getIndexLevelInNO(double concentration) {
    return 1;
  }

  static int getQualityLevelByGas(String gas, double concentration) {
    int concentrationIndex = 0;

    switch (gas) {
      case "SO2":
        concentrationIndex =
            QualityLevelByGas()._getIndexLevelInSO2(concentration);
        break;
      case "NO2":
        concentrationIndex =
            QualityLevelByGas()._getIndexLevelInNO2(concentration);
        break;
      case "CO":
        concentrationIndex =
            QualityLevelByGas()._getIndexLevelInCO(concentration);
        break;
      case "O3":
        concentrationIndex =
            QualityLevelByGas()._getIndexLevelInO3(concentration);
        break;
      case "PM10":
        concentrationIndex =
            QualityLevelByGas()._getIndexLevelInPM10(concentration);
        break;
      case "PM2.5":
        concentrationIndex =
            QualityLevelByGas()._getIndexLevelInPM25(concentration);
        break;
      case "NH3":
        concentrationIndex =
            QualityLevelByGas()._getIndexLevelInNH3(concentration);
        break;
      case "NO":
        concentrationIndex =
            QualityLevelByGas()._getIndexLevelInNO(concentration);
        break;
    }

    return concentrationIndex;
  }
}
