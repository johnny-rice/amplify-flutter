// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_maps_xml_name_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlMapsXmlNameInputOutput extends XmlMapsXmlNameInputOutput {
  @override
  final _i3.BuiltMap<String, GreetingStruct>? myMap;

  factory _$XmlMapsXmlNameInputOutput([
    void Function(XmlMapsXmlNameInputOutputBuilder)? updates,
  ]) => (XmlMapsXmlNameInputOutputBuilder()..update(updates))._build();

  _$XmlMapsXmlNameInputOutput._({this.myMap}) : super._();
  @override
  XmlMapsXmlNameInputOutput rebuild(
    void Function(XmlMapsXmlNameInputOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  XmlMapsXmlNameInputOutputBuilder toBuilder() =>
      XmlMapsXmlNameInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlMapsXmlNameInputOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlMapsXmlNameInputOutputBuilder
    implements
        Builder<XmlMapsXmlNameInputOutput, XmlMapsXmlNameInputOutputBuilder> {
  _$XmlMapsXmlNameInputOutput? _$v;

  _i3.MapBuilder<String, GreetingStruct>? _myMap;
  _i3.MapBuilder<String, GreetingStruct> get myMap =>
      _$this._myMap ??= _i3.MapBuilder<String, GreetingStruct>();
  set myMap(_i3.MapBuilder<String, GreetingStruct>? myMap) =>
      _$this._myMap = myMap;

  XmlMapsXmlNameInputOutputBuilder();

  XmlMapsXmlNameInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlMapsXmlNameInputOutput other) {
    _$v = other as _$XmlMapsXmlNameInputOutput;
  }

  @override
  void update(void Function(XmlMapsXmlNameInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlMapsXmlNameInputOutput build() => _build();

  _$XmlMapsXmlNameInputOutput _build() {
    _$XmlMapsXmlNameInputOutput _$result;
    try {
      _$result = _$v ?? _$XmlMapsXmlNameInputOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'XmlMapsXmlNameInputOutput',
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
