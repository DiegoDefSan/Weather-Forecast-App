int kelvinToCelsius(double kelvin) {
  return (kelvin - 273.15).round();
}

// Function that have a string datetime and return only date
String convertDateTime(String dateString) {
  DateTime dateTime = DateTime.parse(dateString);

  String onlyDate =
      "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

  return onlyDate;
}

String getWeekDay(String dateString) {
  DateTime date = DateTime.parse(dateString);

  int weekIndex = date.weekday;

  List<String> weekDays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  String day = weekDays[weekIndex - 1];

  return day;
}
