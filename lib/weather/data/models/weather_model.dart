import 'package:clean_arch_example/weather/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  const WeatherModel({
    required super.id,
    required super.cityName,
    required super.desc,
    required super.temp,
    required super.minTemp,
    required super.maxTemp,
    required super.pressure,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json['id'],
      cityName: json['name'],
      desc: json['weather'][0]['description'],
      temp: json['main']['temp'],
      minTemp: json['main']['temp_min'],
      maxTemp: json['main']['temp_max'],
      pressure: json['main']['pressure'],
    );
  }
}
