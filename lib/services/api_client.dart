import "package:dio/dio.dart";

class Client{

  Dio init() {
      Dio _dio =  Dio();
     // _dio.interceptors.add(ApiInterceptors());
      _dio.options.baseUrl = "https://swapi.dev/api";
      _dio.options.headers["Accept"] = "application/json";
    return _dio;
  }
}
/*
class ApiInterceptors extends Interceptor {
  @override
  Future<dynamic> onRequest2(RequestOptions options) async {
    // do something before request is sent

    print(options.baseUrl);
    print(options.headers);
    print(options.data);
  }

  @override
  Future<dynamic> onError(DioError dioError) async  {
    print("url :  ${dioError.requestOptions.uri}");
    print("headers : ${dioError.requestOptions.headers} ");
    print("method : ${dioError.requestOptions.method} ");
    print("erro : ${dioError.error} ");
    print("erro : ${dioError.message} ");
    throw  Exception(dioError.response);
  }

  @override
  Future<dynamic> onResponse2(Response response) async {
    // do something before response
    print("url : ${response.requestOptions.uri}");
    print("ok : ${response}");

  }
}*/

