// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_part_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadPartOutput extends UploadPartOutput {
  @override
  final ServerSideEncryption? serverSideEncryption;
  @override
  final String? eTag;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsKeyId;
  @override
  final bool? bucketKeyEnabled;
  @override
  final RequestCharged? requestCharged;

  factory _$UploadPartOutput([
    void Function(UploadPartOutputBuilder)? updates,
  ]) => (UploadPartOutputBuilder()..update(updates))._build();

  _$UploadPartOutput._({
    this.serverSideEncryption,
    this.eTag,
    this.checksumCrc32,
    this.checksumCrc32C,
    this.checksumSha1,
    this.checksumSha256,
    this.sseCustomerAlgorithm,
    this.sseCustomerKeyMd5,
    this.ssekmsKeyId,
    this.bucketKeyEnabled,
    this.requestCharged,
  }) : super._();
  @override
  UploadPartOutput rebuild(void Function(UploadPartOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPartOutputBuilder toBuilder() =>
      UploadPartOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartOutput &&
        serverSideEncryption == other.serverSideEncryption &&
        eTag == other.eTag &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsKeyId == other.ssekmsKeyId &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, ssekmsKeyId.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadPartOutputBuilder
    implements Builder<UploadPartOutput, UploadPartOutputBuilder> {
  _$UploadPartOutput? _$v;

  ServerSideEncryption? _serverSideEncryption;
  ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  String? _checksumCrc32;
  String? get checksumCrc32 => _$this._checksumCrc32;
  set checksumCrc32(String? checksumCrc32) =>
      _$this._checksumCrc32 = checksumCrc32;

  String? _checksumCrc32C;
  String? get checksumCrc32C => _$this._checksumCrc32C;
  set checksumCrc32C(String? checksumCrc32C) =>
      _$this._checksumCrc32C = checksumCrc32C;

  String? _checksumSha1;
  String? get checksumSha1 => _$this._checksumSha1;
  set checksumSha1(String? checksumSha1) => _$this._checksumSha1 = checksumSha1;

  String? _checksumSha256;
  String? get checksumSha256 => _$this._checksumSha256;
  set checksumSha256(String? checksumSha256) =>
      _$this._checksumSha256 = checksumSha256;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  UploadPartOutputBuilder();

  UploadPartOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverSideEncryption = $v.serverSideEncryption;
      _eTag = $v.eTag;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPartOutput other) {
    _$v = other as _$UploadPartOutput;
  }

  @override
  void update(void Function(UploadPartOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartOutput build() => _build();

  _$UploadPartOutput _build() {
    final _$result =
        _$v ??
        _$UploadPartOutput._(
          serverSideEncryption: serverSideEncryption,
          eTag: eTag,
          checksumCrc32: checksumCrc32,
          checksumCrc32C: checksumCrc32C,
          checksumSha1: checksumSha1,
          checksumSha256: checksumSha256,
          sseCustomerAlgorithm: sseCustomerAlgorithm,
          sseCustomerKeyMd5: sseCustomerKeyMd5,
          ssekmsKeyId: ssekmsKeyId,
          bucketKeyEnabled: bucketKeyEnabled,
          requestCharged: requestCharged,
        );
    replace(_$result);
    return _$result;
  }
}

class _$UploadPartOutputPayload extends UploadPartOutputPayload {
  factory _$UploadPartOutputPayload([
    void Function(UploadPartOutputPayloadBuilder)? updates,
  ]) => (UploadPartOutputPayloadBuilder()..update(updates))._build();

  _$UploadPartOutputPayload._() : super._();
  @override
  UploadPartOutputPayload rebuild(
    void Function(UploadPartOutputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UploadPartOutputPayloadBuilder toBuilder() =>
      UploadPartOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartOutputPayload;
  }

  @override
  int get hashCode {
    return 918655581;
  }
}

class UploadPartOutputPayloadBuilder
    implements
        Builder<UploadPartOutputPayload, UploadPartOutputPayloadBuilder> {
  _$UploadPartOutputPayload? _$v;

  UploadPartOutputPayloadBuilder();

  @override
  void replace(UploadPartOutputPayload other) {
    _$v = other as _$UploadPartOutputPayload;
  }

  @override
  void update(void Function(UploadPartOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartOutputPayload build() => _build();

  _$UploadPartOutputPayload _build() {
    final _$result = _$v ?? _$UploadPartOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
