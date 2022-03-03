import 'dart:convert';
import 'package:dio/dio.dart';

class HomeProvider {
  Dio _client;

  HomeProvider(this._client);

  Future getPeople(page) async {
    try {
      final response = await _client.get('/people?page=$page');
      return json.decode(response.toString());
    } on DioError catch (ex) {
      String errorMessage = ex.message.toString();
      throw Exception(errorMessage);
    }
  }

  Future getSpecie(specie) async {
    try {
      final response = await _client.get('/species/$specie');
      return json.decode(response.toString());
    } on DioError catch (ex) {
      String errorMessage = ex.message.toString();
      throw Exception(errorMessage);
    }
  }

  Future getVehicles(vehicle) async {
    try {
      final response = await _client.get('/vehicles/$vehicle');
      return json.decode(response.toString());
    } on DioError catch (ex) {
      String errorMessage = ex.message.toString();
      throw Exception(errorMessage);
    }
  }

  Future getHomeWorld(planet) async {
    try {
      final response = await _client.get('/planets/$planet');
      return json.decode(response.toString());
    } on DioError catch (ex) {
      String errorMessage = ex.message.toString();
      throw Exception(errorMessage);
    }
  }
}
