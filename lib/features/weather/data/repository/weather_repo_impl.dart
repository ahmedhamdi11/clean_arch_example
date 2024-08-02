import 'package:clean_arch_example/features/weather/data/datasource/remote_data_source.dart';
import 'package:clean_arch_example/features/weather/domain/entities/weather_entity.dart';
import 'package:clean_arch_example/features/weather/domain/repository/weather_repo.dart';
import 'package:dartz/dartz.dart';

class WeatherRepoImpl implements WeatherRepo {
  final RemoteDataSource _remoteDataSource;
  const WeatherRepoImpl(this._remoteDataSource);

  @override
  Future<Either<String, WeatherEntity>> getWeatherByCityName(String cityName) {
    return _remoteDataSource.getWeatherByCityName(cityName);
  }
}
