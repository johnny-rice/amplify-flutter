// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointLocation extends EndpointLocation {
  @override
  final String? city;
  @override
  final String? country;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? postalCode;
  @override
  final String? region;

  factory _$EndpointLocation([
    void Function(EndpointLocationBuilder)? updates,
  ]) => (EndpointLocationBuilder()..update(updates))._build();

  _$EndpointLocation._({
    this.city,
    this.country,
    this.latitude,
    this.longitude,
    this.postalCode,
    this.region,
  }) : super._();
  @override
  EndpointLocation rebuild(void Function(EndpointLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointLocationBuilder toBuilder() =>
      EndpointLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointLocation &&
        city == other.city &&
        country == other.country &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        postalCode == other.postalCode &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EndpointLocationBuilder
    implements Builder<EndpointLocation, EndpointLocationBuilder> {
  _$EndpointLocation? _$v;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  EndpointLocationBuilder();

  EndpointLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _country = $v.country;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _postalCode = $v.postalCode;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointLocation other) {
    _$v = other as _$EndpointLocation;
  }

  @override
  void update(void Function(EndpointLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointLocation build() => _build();

  _$EndpointLocation _build() {
    final _$result =
        _$v ??
        _$EndpointLocation._(
          city: city,
          country: country,
          latitude: latitude,
          longitude: longitude,
          postalCode: postalCode,
          region: region,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
