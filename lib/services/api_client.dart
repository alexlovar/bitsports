import "package:dio/dio.dart";

class Client{

  Dio init() {
      Dio _dio =  Dio();
      _dio.options.baseUrl = "https://swapi.dev/api";
      _dio.options.headers["Accept"] = "application/json";
    return _dio;
  }
}


