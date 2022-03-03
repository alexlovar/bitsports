import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:bitsports/services/api_client.dart';
import 'package:bitsports/home/home_provider.dart';
import 'package:bitsports/home/model/person.dart';

class PersonContoller extends GetxController {
  var scrollController = new ScrollController().obs;

  Client _client = new Client();
  var _endpointProvider;
  var person =Person().obs;

  @override
  void onInit() async {
    _endpointProvider = new HomeProvider(_client.init());

  }



}
