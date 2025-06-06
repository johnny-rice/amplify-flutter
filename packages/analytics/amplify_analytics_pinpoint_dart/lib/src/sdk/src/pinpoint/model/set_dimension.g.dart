// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_dimension.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetDimension extends SetDimension {
  @override
  final DimensionType? dimensionType;
  @override
  final _i2.BuiltList<String> values;

  factory _$SetDimension([void Function(SetDimensionBuilder)? updates]) =>
      (SetDimensionBuilder()..update(updates))._build();

  _$SetDimension._({this.dimensionType, required this.values}) : super._();
  @override
  SetDimension rebuild(void Function(SetDimensionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetDimensionBuilder toBuilder() => SetDimensionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetDimension &&
        dimensionType == other.dimensionType &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dimensionType.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SetDimensionBuilder
    implements Builder<SetDimension, SetDimensionBuilder> {
  _$SetDimension? _$v;

  DimensionType? _dimensionType;
  DimensionType? get dimensionType => _$this._dimensionType;
  set dimensionType(DimensionType? dimensionType) =>
      _$this._dimensionType = dimensionType;

  _i2.ListBuilder<String>? _values;
  _i2.ListBuilder<String> get values =>
      _$this._values ??= _i2.ListBuilder<String>();
  set values(_i2.ListBuilder<String>? values) => _$this._values = values;

  SetDimensionBuilder();

  SetDimensionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dimensionType = $v.dimensionType;
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetDimension other) {
    _$v = other as _$SetDimension;
  }

  @override
  void update(void Function(SetDimensionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetDimension build() => _build();

  _$SetDimension _build() {
    _$SetDimension _$result;
    try {
      _$result =
          _$v ??
          _$SetDimension._(
            dimensionType: dimensionType,
            values: values.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SetDimension',
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
