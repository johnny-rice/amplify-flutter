// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_dimension.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricDimension extends MetricDimension {
  @override
  final String comparisonOperator;
  @override
  final double value;

  factory _$MetricDimension([void Function(MetricDimensionBuilder)? updates]) =>
      (MetricDimensionBuilder()..update(updates))._build();

  _$MetricDimension._({required this.comparisonOperator, required this.value})
    : super._();
  @override
  MetricDimension rebuild(void Function(MetricDimensionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricDimensionBuilder toBuilder() => MetricDimensionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricDimension &&
        comparisonOperator == other.comparisonOperator &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comparisonOperator.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricDimensionBuilder
    implements Builder<MetricDimension, MetricDimensionBuilder> {
  _$MetricDimension? _$v;

  String? _comparisonOperator;
  String? get comparisonOperator => _$this._comparisonOperator;
  set comparisonOperator(String? comparisonOperator) =>
      _$this._comparisonOperator = comparisonOperator;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  MetricDimensionBuilder();

  MetricDimensionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comparisonOperator = $v.comparisonOperator;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricDimension other) {
    _$v = other as _$MetricDimension;
  }

  @override
  void update(void Function(MetricDimensionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricDimension build() => _build();

  _$MetricDimension _build() {
    final _$result =
        _$v ??
        _$MetricDimension._(
          comparisonOperator: BuiltValueNullFieldError.checkNotNull(
            comparisonOperator,
            r'MetricDimension',
            'comparisonOperator',
          ),
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'MetricDimension',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
