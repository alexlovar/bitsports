class Vehicle{
  late String _name;
  late String _model;
  late String _manufacturer;
  late String _cost_in_credits;
  late String _url;
  late String _max_atmosphering_speed;
  late String _crew;
  late String _passengers;
  late String _cargo_capacity;
  late String _consumables;
  late String _vehicle_class;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get model => _model;

  String get vehicle_class => _vehicle_class;

  set vehicle_class(String value) {
    _vehicle_class = value;
  }

  String get consumables => _consumables;

  set consumables(String value) {
    _consumables = value;
  }

  String get cargo_capacity => _cargo_capacity;

  set cargo_capacity(String value) {
    _cargo_capacity = value;
  }

  String get passengers => _passengers;

  set passengers(String value) {
    _passengers = value;
  }

  String get crew => _crew;

  set crew(String value) {
    _crew = value;
  }

  String get max_atmosphering_speed => _max_atmosphering_speed;

  set max_atmosphering_speed(String value) {
    _max_atmosphering_speed = value;
  }


  String get url => _url;

  set url(String value) {
    _url = value;
  }

  String get cost_in_credits => _cost_in_credits;

  set cost_in_credits(String value) {
    _cost_in_credits = value;
  }

  String get manufacturer => _manufacturer;

  set manufacturer(String value) {
    _manufacturer = value;
  }

  set model(String value) {
    _model = value;
  }

  @override
  String toString() {
    return 'Vehicle{_name: $_name, _model: $_model, _manufacturer: $_manufacturer, _cost_in_credits: $_cost_in_credits, _url: $_url, _max_atmosphering_speed: $_max_atmosphering_speed, _crew: $_crew, _passengers: $_passengers, _cargo_capacity: $_cargo_capacity, _consumables: $_consumables, _vehicle_class: $_vehicle_class}';
  }
}