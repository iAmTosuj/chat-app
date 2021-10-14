import 'package:dio/dio.dart';

Dio mainClient(Dio dio) {
  return Dio(BaseOptions(baseUrl: 'https://google.com'));
}