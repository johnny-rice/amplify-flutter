// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEndpointRequest extends GetEndpointRequest {
  @override
  final String applicationId;
  @override
  final String endpointId;

  factory _$GetEndpointRequest([
    void Function(GetEndpointRequestBuilder)? updates,
  ]) => (GetEndpointRequestBuilder()..update(updates))._build();

  _$GetEndpointRequest._({
    required this.applicationId,
    required this.endpointId,
  }) : super._();
  @override
  GetEndpointRequest rebuild(
    void Function(GetEndpointRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetEndpointRequestBuilder toBuilder() =>
      GetEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEndpointRequest &&
        applicationId == other.applicationId &&
        endpointId == other.endpointId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applicationId.hashCode);
    _$hash = $jc(_$hash, endpointId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetEndpointRequestBuilder
    implements Builder<GetEndpointRequest, GetEndpointRequestBuilder> {
  _$GetEndpointRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  String? _endpointId;
  String? get endpointId => _$this._endpointId;
  set endpointId(String? endpointId) => _$this._endpointId = endpointId;

  GetEndpointRequestBuilder();

  GetEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _endpointId = $v.endpointId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEndpointRequest other) {
    _$v = other as _$GetEndpointRequest;
  }

  @override
  void update(void Function(GetEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEndpointRequest build() => _build();

  _$GetEndpointRequest _build() {
    final _$result =
        _$v ??
        _$GetEndpointRequest._(
          applicationId: BuiltValueNullFieldError.checkNotNull(
            applicationId,
            r'GetEndpointRequest',
            'applicationId',
          ),
          endpointId: BuiltValueNullFieldError.checkNotNull(
            endpointId,
            r'GetEndpointRequest',
            'endpointId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GetEndpointRequestPayload extends GetEndpointRequestPayload {
  factory _$GetEndpointRequestPayload([
    void Function(GetEndpointRequestPayloadBuilder)? updates,
  ]) => (GetEndpointRequestPayloadBuilder()..update(updates))._build();

  _$GetEndpointRequestPayload._() : super._();
  @override
  GetEndpointRequestPayload rebuild(
    void Function(GetEndpointRequestPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetEndpointRequestPayloadBuilder toBuilder() =>
      GetEndpointRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEndpointRequestPayload;
  }

  @override
  int get hashCode {
    return 311414640;
  }
}

class GetEndpointRequestPayloadBuilder
    implements
        Builder<GetEndpointRequestPayload, GetEndpointRequestPayloadBuilder> {
  _$GetEndpointRequestPayload? _$v;

  GetEndpointRequestPayloadBuilder();

  @override
  void replace(GetEndpointRequestPayload other) {
    _$v = other as _$GetEndpointRequestPayload;
  }

  @override
  void update(void Function(GetEndpointRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEndpointRequestPayload build() => _build();

  _$GetEndpointRequestPayload _build() {
    final _$result = _$v ?? _$GetEndpointRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
