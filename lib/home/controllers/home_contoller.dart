import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:bitsports/services/api_client.dart';
import 'package:bitsports/home/home_provider.dart';
import 'package:bitsports/home/model/person.dart';
import 'package:bitsports/home/model/planet.dart';
import 'package:bitsports/home/model/vehicle.dart';

class HomeController extends GetxController {
  var scrollController = ScrollController().obs;
  final Client _client = Client();
  var _endpointProvider;
  var isError = false.obs;
  var page = 1.obs;
  var people = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() async {
    _endpointProvider = HomeProvider(_client.init());
    _scrollListener() {
      if (scrollController.value.offset >= scrollController.value.position.maxScrollExtent && !scrollController.value.position.outOfRange) {
        loadMore();
      }
    }
    scrollController.value.addListener(_scrollListener);
    await getPeople();
  }

  loadMore() async {
    page = page + 1;
    getPeople();
  }

  getPeople() async {
    try {
      isLoading.value = true;
      var data = await _endpointProvider.getPeople(page.value);
      var results = data["results"];
      isError.value = false;
      for (var p in results) {
        Person person = Person();
        person.name = p["name"];
        person.birth = p["birth_year"];
        person.gender = p["gender"];
        person.hairColor = p["hair_color"];
        person.eyeColor = p["eye_color"];
        person.height = p["height"];
        person.homeWorld = p["homeworld"];
        person.mass = p["mass"];
        person.skinColor = p["skin_color"];
        var vehicles = p["vehicles"];
        List<Vehicle> vehiclesArray = [];
        for (var v in vehicles) {
          List<String> vehicleId = v.split("/");
          var vehicleEndPoint = await _endpointProvider.getVehicles(vehicleId[vehicleId.length - 2]);
          vehiclesArray.add(Vehicle(name: vehicleEndPoint["name"], url: v));
        }
        person.vehicles = vehiclesArray;
        var species = p["species"];
        List<String> speciesArray = [];
        if (species.length > 0) {
          for (var s in species) {
            List<String> specieId = s.split("/");
            var specieEndpoint = await _endpointProvider.getSpecie(specieId[specieId.length - 2]);
            speciesArray.add(specieEndpoint["name"]);
          }
          person.species = speciesArray.join(",");
        } else {
          person.species = "Human";
        }

        var homeWorld = p["homeworld"];
        List<String> urlHomeWorld = homeWorld.split("/");

        var planetEndpoint = await _endpointProvider.getHomeWorld(urlHomeWorld[urlHomeWorld.length - 2]);
        Planet planet = Planet();
        planet.name = planetEndpoint["name"];
        planet.rotation_period = planetEndpoint["rotation_period"];
        planet.orbital_period = planetEndpoint["orbital_period"];
        planet.diameter = planetEndpoint["diameter"];
        planet.climate = planetEndpoint["climate"];
        planet.gravity = planetEndpoint["gravity"];
        planet.terrain = planetEndpoint["terrain"];
        planet.surface_water = planetEndpoint["surface_water"];
        planet.population = planetEndpoint["population"];
        person.planet = planet;
        people.add(person);
      }
      isLoading.value = false;
    } catch (e) {
      print("connection error");
      isError.value = true;
    }
  }
}
