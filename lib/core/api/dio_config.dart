import 'package:dio/dio.dart';

class DioConfig{
  static Dio getDio(){
    Dio dio = Dio(BaseOptions(baseUrl: 'https://api.quotable.io/'));
    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  }
}