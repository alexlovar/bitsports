class Planet{
  late String _name;
  late String _rotation_period;
  late String _orbital_period;
  late String _diameter;
  late String _climate;
  late String _gravity;
  late String _terrain;
  late String _surface_water;
  late String _population;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get rotation_period => _rotation_period;

  String get population => _population;

  set population(String value) {
    _population = value;
  }

  String get surface_water => _surface_water;

  set surface_water(String value) {
    _surface_water = value;
  }

  String get terrain => _terrain;

  set terrain(String value) {
    _terrain = value;
  }

  String get gravity => _gravity;

  set gravity(String value) {
    _gravity = value;
  }

  String get climate => _climate;

  set climate(String value) {
    _climate = value;
  }

  String get diameter => _diameter;

  set diameter(String value) {
    _diameter = value;
  }

  String get orbital_period => _orbital_period;

  set orbital_period(String value) {
    _orbital_period = value;
  }

  set rotation_period(String value) {
    _rotation_period = value;
  }

  @override
  String toString() {
    return 'Planet{_name: $_name, _rotation_period: $_rotation_period, _orbital_period: $_orbital_period, _diameter: $_diameter, _climate: $_climate, _gravity: $_gravity, _terrain: $_terrain, _surface_water: $_surface_water, _population: $_population}';
  }
}