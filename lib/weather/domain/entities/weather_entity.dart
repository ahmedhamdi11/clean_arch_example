class WeatherEntity {
  final int id;
  final String cityName;
  final String desc;
  final num temp;
  final num minTemp;
  final num maxTemp;
  final int pressure;

  const WeatherEntity({
    required this.id,
    required this.cityName,
    required this.desc,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.pressure,
  });
}
