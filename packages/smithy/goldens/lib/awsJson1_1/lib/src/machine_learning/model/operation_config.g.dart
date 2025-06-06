// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationConfig extends OperationConfig {
  @override
  final S3Config? s3;

  factory _$OperationConfig([void Function(OperationConfigBuilder)? updates]) =>
      (OperationConfigBuilder()..update(updates))._build();

  _$OperationConfig._({this.s3}) : super._();
  @override
  OperationConfig rebuild(void Function(OperationConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationConfigBuilder toBuilder() => OperationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationConfig && s3 == other.s3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OperationConfigBuilder
    implements Builder<OperationConfig, OperationConfigBuilder> {
  _$OperationConfig? _$v;

  S3ConfigBuilder? _s3;
  S3ConfigBuilder get s3 => _$this._s3 ??= S3ConfigBuilder();
  set s3(S3ConfigBuilder? s3) => _$this._s3 = s3;

  OperationConfigBuilder();

  OperationConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3 = $v.s3?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationConfig other) {
    _$v = other as _$OperationConfig;
  }

  @override
  void update(void Function(OperationConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationConfig build() => _build();

  _$OperationConfig _build() {
    _$OperationConfig _$result;
    try {
      _$result = _$v ?? _$OperationConfig._(s3: _s3?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OperationConfig',
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
