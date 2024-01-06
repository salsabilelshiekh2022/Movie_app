import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String _baseUrl = "https://api.themoviedb.org/3/movie/";
  final String _apiKey = "311c629b81cf1911a22cc10dc04116f7";

  ApiService(this.dio);

  static void init() {
    Dio(
      BaseOptions(
        baseUrl: "https://api.themoviedb.org/3/movie/",
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type': 'application/json',
          'lang': 'en',
        },
      ),
    );
  }

  Future<Response> get({
    required String endPoint,
    String lang = 'en',
  }) async {
    dio.options.headers = {
      'lang': lang,
    };

    return await dio.get("$_baseUrl$endPoint?api_key=$_apiKey");
  }
}
