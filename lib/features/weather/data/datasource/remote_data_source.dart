import 'package:clean_arch_example/core/utils/constatnts.dart';
import 'package:clean_arch_example/features/weather/data/models/weather_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<Either<String, WeatherModel>> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<Either<String, WeatherModel>> getWeatherByCityName(
    String cityName,
  ) async {
    try {
      Response res = await Dio().get(
        '$kBaseUrl/weather?q=$cityName&appid=$kApiKey',
      );

      return right(WeatherModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
