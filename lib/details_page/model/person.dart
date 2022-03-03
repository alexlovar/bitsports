import 'package:bitsports/home/model/film.dart';
import 'package:bitsports/home/model/planet.dart';
import 'package:bitsports/home/model/vehicle.dart';

class Person{
  late String _name;
  late String _birth_year;
  late String _created;
  late String _edited;
  late String _eye_color;
  late String _gender;
  late String _hair_color;
  late String _height;
  late String _homeworld;
  late String _mass;
  late String _skin_color;
  late String _url;
  List<Film> _films=[];
  List<Vehicle> _vehicles=[];
  late String _species;
  List<Vehicle> _starships=[];
  late Planet _planet;


  Planet get planet => _planet;

  set planet(Planet value) {
    _planet = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get birth_year => _birth_year;

  set birth_year(String value) {
    _birth_year = value;
  }

  String get created => _created;

  set created(String value) {
    _created = value;
  }

  String get edited => _edited;

  set edited(String value) {
    _edited = value;
  }

  String get eye_color => _eye_color;

  set eye_color(String value) {
    _eye_color = value;
  }

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

  String get hair_color => _hair_color;

  set hair_color(String value) {
    _hair_color = value;
  }

  String get height => _height;

  set height(String value) {
    _height = value;
  }

  String get homeworld => _homeworld;

  set homeworld(String value) {
    _homeworld = value;
  }

  String get mass => _mass;

  set mass(String value) {
    _mass = value;
  }

  String get skin_color => _skin_color;

  set skin_color(String value) {
    _skin_color = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  List<Film> get films => _films;

  set films(List<Film> value) {
    _films = value;
  }

  List<Vehicle> get vehicles => _vehicles;

  set vehicles(List<Vehicle> value) {
    _vehicles = value;
  }


  String get species => _species;

  set species(String value) {
    _species = value;
  }

  List<Vehicle> get starships => _starships;

  set starships(List<Vehicle> value) {
    _starships = value;
  }

  @override
  String toString() {
    return 'Person{_name: $_name, _birth_year: $_birth_year, _created: $_created, _edited: $_edited, _eye_color: $_eye_color, _gender: $_gender, _hair_color: $_hair_color, _height: $_height, _homeworld: $_homeworld, _mass: $_mass, _skin_color: $_skin_color, _url: $_url, _films: $_films, _vehicles: $_vehicles, _species: $_species, _starships: $_starships}';
  }
}