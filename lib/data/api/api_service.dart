import 'package:dio/dio.dart';
import 'package:dynamic_view/data/api/api_client.dart';
import 'package:dynamic_view/data/models/dynamic_view_model.dart';

class ApiService {
  ApiService({required ApiClient apiClient}) : _apiClient = apiClient;
  final ApiClient _apiClient;

  Future<dynamic> getDynamicView() async {
    try {
      Response res = await _apiClient.dio.get(_apiClient.dio.options.baseUrl);
      switch (res.statusCode) {
        case 200:
          return (res.data['dynamic_views'] as List?)
                  ?.map((e) => DynamicViewModel.fromJson(e))
                  .toList() ??
              [];
        default:
          throw 'Status Message: ${res.statusMessage.toString()}';
      }
    } on DioError catch (ex) {
      if (ex.type == DioErrorType.connectTimeout ||
          ex.type == DioErrorType.receiveTimeout ||
          ex.type == DioErrorType.sendTimeout) {
        throw "Server time out";
      } else if (ex.type == DioErrorType.other) {
        throw "No internet";
      } else {
        throw ex.message.toString();
      }
    }
  }
}
