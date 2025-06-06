// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predict_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PredictInput extends PredictInput {
  @override
  final String mlModelId;
  @override
  final _i3.BuiltMap<String, String> record;
  @override
  final String predictEndpoint;

  factory _$PredictInput([void Function(PredictInputBuilder)? updates]) =>
      (PredictInputBuilder()..update(updates))._build();

  _$PredictInput._({
    required this.mlModelId,
    required this.record,
    required this.predictEndpoint,
  }) : super._();
  @override
  PredictInput rebuild(void Function(PredictInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PredictInputBuilder toBuilder() => PredictInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PredictInput &&
        mlModelId == other.mlModelId &&
        record == other.record &&
        predictEndpoint == other.predictEndpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mlModelId.hashCode);
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, predictEndpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PredictInputBuilder
    implements Builder<PredictInput, PredictInputBuilder> {
  _$PredictInput? _$v;

  String? _mlModelId;
  String? get mlModelId => _$this._mlModelId;
  set mlModelId(String? mlModelId) => _$this._mlModelId = mlModelId;

  _i3.MapBuilder<String, String>? _record;
  _i3.MapBuilder<String, String> get record =>
      _$this._record ??= _i3.MapBuilder<String, String>();
  set record(_i3.MapBuilder<String, String>? record) => _$this._record = record;

  String? _predictEndpoint;
  String? get predictEndpoint => _$this._predictEndpoint;
  set predictEndpoint(String? predictEndpoint) =>
      _$this._predictEndpoint = predictEndpoint;

  PredictInputBuilder();

  PredictInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mlModelId = $v.mlModelId;
      _record = $v.record.toBuilder();
      _predictEndpoint = $v.predictEndpoint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PredictInput other) {
    _$v = other as _$PredictInput;
  }

  @override
  void update(void Function(PredictInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PredictInput build() => _build();

  _$PredictInput _build() {
    _$PredictInput _$result;
    try {
      _$result =
          _$v ??
          _$PredictInput._(
            mlModelId: BuiltValueNullFieldError.checkNotNull(
              mlModelId,
              r'PredictInput',
              'mlModelId',
            ),
            record: record.build(),
            predictEndpoint: BuiltValueNullFieldError.checkNotNull(
              predictEndpoint,
              r'PredictInput',
              'predictEndpoint',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'record';
        record.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PredictInput',
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
