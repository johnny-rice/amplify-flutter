// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_object_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectResult extends CopyObjectResult {
  @override
  final String? eTag;
  @override
  final DateTime? lastModified;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;

  factory _$CopyObjectResult([
    void Function(CopyObjectResultBuilder)? updates,
  ]) => (CopyObjectResultBuilder()..update(updates))._build();

  _$CopyObjectResult._({
    this.eTag,
    this.lastModified,
    this.checksumCrc32,
    this.checksumCrc32C,
    this.checksumSha1,
    this.checksumSha256,
  }) : super._();
  @override
  CopyObjectResult rebuild(void Function(CopyObjectResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectResultBuilder toBuilder() =>
      CopyObjectResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectResult &&
        eTag == other.eTag &&
        lastModified == other.lastModified &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopyObjectResultBuilder
    implements Builder<CopyObjectResult, CopyObjectResultBuilder> {
  _$CopyObjectResult? _$v;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

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

  CopyObjectResultBuilder();

  CopyObjectResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eTag = $v.eTag;
      _lastModified = $v.lastModified;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyObjectResult other) {
    _$v = other as _$CopyObjectResult;
  }

  @override
  void update(void Function(CopyObjectResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectResult build() => _build();

  _$CopyObjectResult _build() {
    final _$result =
        _$v ??
        _$CopyObjectResult._(
          eTag: eTag,
          lastModified: lastModified,
          checksumCrc32: checksumCrc32,
          checksumCrc32C: checksumCrc32C,
          checksumSha1: checksumSha1,
          checksumSha256: checksumSha256,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
