import 'package:dio/dio.dart';
import 'package:dynamic_view/utils/const.dart';

class ApiClient {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      receiveTimeout: 20000,
      sendTimeout: 20000,
    ),
  );

  
}
