import 'package:clean_arch_example/features/weather/domain/entities/weather_entity.dart';
import 'package:clean_arch_example/features/weather/domain/repository/weather_repo.dart';
import 'package:dartz/dartz.dart';

class GetWeatherByCityName {
  final WeatherRepo _repo;

  const GetWeatherByCityName(this._repo);

  Future<Either<String, WeatherEntity>> execute(String cityName) async {
    return await _repo.getWeatherByCityName(cityName);
  }
}
