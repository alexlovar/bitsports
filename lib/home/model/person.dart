import 'package:bitsports/home/model/film.dart';
import 'package:bitsports/home/model/planet.dart';
import 'package:bitsports/home/model/vehicle.dart';

class Person{
  String? name;
  String? birth;
  String? created;
  String? edited;
  String? eyeColor;
  String? gender;
  String? hairColor;
  String? height;
  String? homeWorld;
  String? mass;
  String? skinColor;
  String? url;
  List<Film>? films=[];
  List<Vehicle>? vehicles=[];
  String? species;
  List<Vehicle>? starships=[];
  Planet? planet;

  Person({
    this.name,
    this.birth,
    this.created,
    this.edited,
    this.eyeColor,
    this.gender,
    this.hairColor,
    this.height,
    this.homeWorld,
    this.mass,
    this.skinColor,
    this.url,
     this.films,
     this.vehicles,
    this.species,
     this.starships,
    this.planet,

  });

  @override
  String toString() {
    return 'Person{name: $name, birth_year: $birth, created: $created, edited: $edited, eye_color: $eyeColor, gender: $gender, hair_color: $hairColor, height: $height, homeworld: $homeWorld, mass: $mass, skin_color: $skinColor, url: $url, films: $films, vehicles: $vehicles, species: $species, starships: $starships, planet: $planet}';
  }
}