// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_resource_cidrs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamResourceCidrsRequest extends GetIpamResourceCidrsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final String? ipamScopeId;
  @override
  final String? ipamPoolId;
  @override
  final String? resourceId;
  @override
  final IpamResourceType? resourceType;
  @override
  final RequestIpamResourceTag? resourceTag;
  @override
  final String? resourceOwner;

  factory _$GetIpamResourceCidrsRequest(
          [void Function(GetIpamResourceCidrsRequestBuilder)? updates]) =>
      (new GetIpamResourceCidrsRequestBuilder()..update(updates))._build();

  _$GetIpamResourceCidrsRequest._(
      {required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken,
      this.ipamScopeId,
      this.ipamPoolId,
      this.resourceId,
      this.resourceType,
      this.resourceTag,
      this.resourceOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetIpamResourceCidrsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetIpamResourceCidrsRequest', 'maxResults');
  }

  @override
  GetIpamResourceCidrsRequest rebuild(
          void Function(GetIpamResourceCidrsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamResourceCidrsRequestBuilder toBuilder() =>
      new GetIpamResourceCidrsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamResourceCidrsRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        ipamScopeId == other.ipamScopeId &&
        ipamPoolId == other.ipamPoolId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        resourceTag == other.resourceTag &&
        resourceOwner == other.resourceOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ipamScopeId.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceTag.hashCode);
    _$hash = $jc(_$hash, resourceOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamResourceCidrsRequestBuilder
    implements
        Builder<GetIpamResourceCidrsRequest,
            GetIpamResourceCidrsRequestBuilder> {
  _$GetIpamResourceCidrsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _ipamScopeId;
  String? get ipamScopeId => _$this._ipamScopeId;
  set ipamScopeId(String? ipamScopeId) => _$this._ipamScopeId = ipamScopeId;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  IpamResourceType? _resourceType;
  IpamResourceType? get resourceType => _$this._resourceType;
  set resourceType(IpamResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  RequestIpamResourceTagBuilder? _resourceTag;
  RequestIpamResourceTagBuilder get resourceTag =>
      _$this._resourceTag ??= new RequestIpamResourceTagBuilder();
  set resourceTag(RequestIpamResourceTagBuilder? resourceTag) =>
      _$this._resourceTag = resourceTag;

  String? _resourceOwner;
  String? get resourceOwner => _$this._resourceOwner;
  set resourceOwner(String? resourceOwner) =>
      _$this._resourceOwner = resourceOwner;

  GetIpamResourceCidrsRequestBuilder() {
    GetIpamResourceCidrsRequest._init(this);
  }

  GetIpamResourceCidrsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _ipamScopeId = $v.ipamScopeId;
      _ipamPoolId = $v.ipamPoolId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _resourceTag = $v.resourceTag?.toBuilder();
      _resourceOwner = $v.resourceOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamResourceCidrsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamResourceCidrsRequest;
  }

  @override
  void update(void Function(GetIpamResourceCidrsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamResourceCidrsRequest build() => _build();

  _$GetIpamResourceCidrsRequest _build() {
    _$GetIpamResourceCidrsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetIpamResourceCidrsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetIpamResourceCidrsRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'GetIpamResourceCidrsRequest', 'maxResults'),
              nextToken: nextToken,
              ipamScopeId: ipamScopeId,
              ipamPoolId: ipamPoolId,
              resourceId: resourceId,
              resourceType: resourceType,
              resourceTag: _resourceTag?.build(),
              resourceOwner: resourceOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'resourceTag';
        _resourceTag?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamResourceCidrsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint