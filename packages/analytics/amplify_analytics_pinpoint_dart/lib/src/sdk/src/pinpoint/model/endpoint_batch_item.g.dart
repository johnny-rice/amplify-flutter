// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_batch_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointBatchItem extends EndpointBatchItem {
  @override
  final String? address;
  @override
  final _i2.BuiltListMultimap<String, String>? attributes;
  @override
  final ChannelType? channelType;
  @override
  final EndpointDemographic? demographic;
  @override
  final String? effectiveDate;
  @override
  final String? endpointStatus;
  @override
  final String? id;
  @override
  final EndpointLocation? location;
  @override
  final _i2.BuiltMap<String, double>? metrics;
  @override
  final String? optOut;
  @override
  final String? requestId;
  @override
  final EndpointUser? user;

  factory _$EndpointBatchItem([
    void Function(EndpointBatchItemBuilder)? updates,
  ]) => (EndpointBatchItemBuilder()..update(updates))._build();

  _$EndpointBatchItem._({
    this.address,
    this.attributes,
    this.channelType,
    this.demographic,
    this.effectiveDate,
    this.endpointStatus,
    this.id,
    this.location,
    this.metrics,
    this.optOut,
    this.requestId,
    this.user,
  }) : super._();
  @override
  EndpointBatchItem rebuild(void Function(EndpointBatchItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointBatchItemBuilder toBuilder() =>
      EndpointBatchItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointBatchItem &&
        address == other.address &&
        attributes == other.attributes &&
        channelType == other.channelType &&
        demographic == other.demographic &&
        effectiveDate == other.effectiveDate &&
        endpointStatus == other.endpointStatus &&
        id == other.id &&
        location == other.location &&
        metrics == other.metrics &&
        optOut == other.optOut &&
        requestId == other.requestId &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, channelType.hashCode);
    _$hash = $jc(_$hash, demographic.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, endpointStatus.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, optOut.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EndpointBatchItemBuilder
    implements Builder<EndpointBatchItem, EndpointBatchItemBuilder> {
  _$EndpointBatchItem? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  _i2.ListMultimapBuilder<String, String>? _attributes;
  _i2.ListMultimapBuilder<String, String> get attributes =>
      _$this._attributes ??= _i2.ListMultimapBuilder<String, String>();
  set attributes(_i2.ListMultimapBuilder<String, String>? attributes) =>
      _$this._attributes = attributes;

  ChannelType? _channelType;
  ChannelType? get channelType => _$this._channelType;
  set channelType(ChannelType? channelType) =>
      _$this._channelType = channelType;

  EndpointDemographicBuilder? _demographic;
  EndpointDemographicBuilder get demographic =>
      _$this._demographic ??= EndpointDemographicBuilder();
  set demographic(EndpointDemographicBuilder? demographic) =>
      _$this._demographic = demographic;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  String? _endpointStatus;
  String? get endpointStatus => _$this._endpointStatus;
  set endpointStatus(String? endpointStatus) =>
      _$this._endpointStatus = endpointStatus;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  EndpointLocationBuilder? _location;
  EndpointLocationBuilder get location =>
      _$this._location ??= EndpointLocationBuilder();
  set location(EndpointLocationBuilder? location) =>
      _$this._location = location;

  _i2.MapBuilder<String, double>? _metrics;
  _i2.MapBuilder<String, double> get metrics =>
      _$this._metrics ??= _i2.MapBuilder<String, double>();
  set metrics(_i2.MapBuilder<String, double>? metrics) =>
      _$this._metrics = metrics;

  String? _optOut;
  String? get optOut => _$this._optOut;
  set optOut(String? optOut) => _$this._optOut = optOut;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  EndpointUserBuilder? _user;
  EndpointUserBuilder get user => _$this._user ??= EndpointUserBuilder();
  set user(EndpointUserBuilder? user) => _$this._user = user;

  EndpointBatchItemBuilder();

  EndpointBatchItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _attributes = $v.attributes?.toBuilder();
      _channelType = $v.channelType;
      _demographic = $v.demographic?.toBuilder();
      _effectiveDate = $v.effectiveDate;
      _endpointStatus = $v.endpointStatus;
      _id = $v.id;
      _location = $v.location?.toBuilder();
      _metrics = $v.metrics?.toBuilder();
      _optOut = $v.optOut;
      _requestId = $v.requestId;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointBatchItem other) {
    _$v = other as _$EndpointBatchItem;
  }

  @override
  void update(void Function(EndpointBatchItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointBatchItem build() => _build();

  _$EndpointBatchItem _build() {
    _$EndpointBatchItem _$result;
    try {
      _$result =
          _$v ??
          _$EndpointBatchItem._(
            address: address,
            attributes: _attributes?.build(),
            channelType: channelType,
            demographic: _demographic?.build(),
            effectiveDate: effectiveDate,
            endpointStatus: endpointStatus,
            id: id,
            location: _location?.build(),
            metrics: _metrics?.build(),
            optOut: optOut,
            requestId: requestId,
            user: _user?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();

        _$failedField = 'demographic';
        _demographic?.build();

        _$failedField = 'location';
        _location?.build();
        _$failedField = 'metrics';
        _metrics?.build();

        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EndpointBatchItem',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
