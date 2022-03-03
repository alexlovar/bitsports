class Planet{
  late String _name;
  late String _rotationPeriod;
  late String _orbitalPeriod;
  late String _diameter;
  late String _climate;
  late String _gravity;
  late String _terrain;
  late String _surfaceWater;
  late String _population;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get rotation_period => _rotationPeriod;

  String get population => _population;

  set population(String value) {
    _population = value;
  }

  String get surface_water => _surfaceWater;

  set surface_water(String value) {
    _surfaceWater = value;
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

  String get orbital_period => _orbitalPeriod;

  set orbital_period(String value) {
    _orbitalPeriod = value;
  }

  set rotation_period(String value) {
    _rotationPeriod = value;
  }

  @override
  String toString() {
    return 'Planet{_name: $_name, _rotation_period: $_rotationPeriod, _orbital_period: $_orbitalPeriod, _diameter: $_diameter, _climate: $_climate, _gravity: $_gravity, _terrain: $_terrain, _surface_water: $_surfaceWater, _population: $_population}';
  }
}