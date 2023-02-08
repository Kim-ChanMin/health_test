part of health;

/// A [Device] object corresponds to device information as retrieved from HealthKit.
class Device {
  String? _softwareVersion;
  String? _model;
  String? _manufacturer;
  String? _name;
  Device(
      this._softwareVersion,
      this._model,
      this._manufacturer,
      this._name);

  /// Converts a json object to the [Device].
  factory Device.fromJson(json) {
    return Device(
        json['software_version'],
        json['model'],
        json['manufacturer'],
        json['name']);
  }

  /// Converts the [Device] to a json object.
  Map<String, dynamic> toJson() => {
        'software_version': softwareVersion,
        'model': model,
        'manufacturer': manufacturer,
        'name': name
      };
  @override
  String toString() => """${this.runtimeType} -
    softwareVersion: $softwareVersion,
    model: $model,
    manufacturer: $manufacturer,
    name: $name
    """;

  /// The device software version.
  String? get softwareVersion => _softwareVersion;

  /// The device model.
  String? get model => _model;

  /// The device manufacturer.
  String? get manufacturer => _manufacturer;

  /// The name of the device.
  String? get name => _name;
  @override
  bool operator ==(Object o) {
    return o is Device &&
        this.softwareVersion == o.softwareVersion &&
        this.model == o.model &&
        this.manufacturer == o.manufacturer &&
        this.name == o.name;
  }

  @override
  int get hashCode => Object.hash(softwareVersion, model, manufacturer, name);
}