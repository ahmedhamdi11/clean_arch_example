import 'package:clean_arch_example/weather/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';

abstract class WeatherRepo {
  Future<Either<String, WeatherEntity>> getWeatherByCityName(String cityName);
}