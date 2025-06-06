// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flattened_xml_map_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlattenedXmlMapInputOutput extends FlattenedXmlMapInputOutput {
  @override
  final _i3.BuiltMap<String, FooEnum>? myMap;

  factory _$FlattenedXmlMapInputOutput([
    void Function(FlattenedXmlMapInputOutputBuilder)? updates,
  ]) => (FlattenedXmlMapInputOutputBuilder()..update(updates))._build();

  _$FlattenedXmlMapInputOutput._({this.myMap}) : super._();
  @override
  FlattenedXmlMapInputOutput rebuild(
    void Function(FlattenedXmlMapInputOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FlattenedXmlMapInputOutputBuilder toBuilder() =>
      FlattenedXmlMapInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlattenedXmlMapInputOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FlattenedXmlMapInputOutputBuilder
    implements
        Builder<FlattenedXmlMapInputOutput, FlattenedXmlMapInputOutputBuilder> {
  _$FlattenedXmlMapInputOutput? _$v;

  _i3.MapBuilder<String, FooEnum>? _myMap;
  _i3.MapBuilder<String, FooEnum> get myMap =>
      _$this._myMap ??= _i3.MapBuilder<String, FooEnum>();
  set myMap(_i3.MapBuilder<String, FooEnum>? myMap) => _$this._myMap = myMap;

  FlattenedXmlMapInputOutputBuilder();

  FlattenedXmlMapInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlattenedXmlMapInputOutput other) {
    _$v = other as _$FlattenedXmlMapInputOutput;
  }

  @override
  void update(void Function(FlattenedXmlMapInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlattenedXmlMapInputOutput build() => _build();

  _$FlattenedXmlMapInputOutput _build() {
    _$FlattenedXmlMapInputOutput _$result;
    try {
      _$result = _$v ?? _$FlattenedXmlMapInputOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FlattenedXmlMapInputOutput',
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
