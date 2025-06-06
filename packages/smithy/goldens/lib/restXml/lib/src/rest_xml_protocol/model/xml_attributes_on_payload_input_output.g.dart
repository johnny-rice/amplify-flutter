// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_attributes_on_payload_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlAttributesOnPayloadInputOutput
    extends XmlAttributesOnPayloadInputOutput {
  @override
  final XmlAttributesInputOutput? payload;

  factory _$XmlAttributesOnPayloadInputOutput([
    void Function(XmlAttributesOnPayloadInputOutputBuilder)? updates,
  ]) => (XmlAttributesOnPayloadInputOutputBuilder()..update(updates))._build();

  _$XmlAttributesOnPayloadInputOutput._({this.payload}) : super._();
  @override
  XmlAttributesOnPayloadInputOutput rebuild(
    void Function(XmlAttributesOnPayloadInputOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  XmlAttributesOnPayloadInputOutputBuilder toBuilder() =>
      XmlAttributesOnPayloadInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlAttributesOnPayloadInputOutput &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlAttributesOnPayloadInputOutputBuilder
    implements
        Builder<
          XmlAttributesOnPayloadInputOutput,
          XmlAttributesOnPayloadInputOutputBuilder
        > {
  _$XmlAttributesOnPayloadInputOutput? _$v;

  XmlAttributesInputOutputBuilder? _payload;
  XmlAttributesInputOutputBuilder get payload =>
      _$this._payload ??= XmlAttributesInputOutputBuilder();
  set payload(XmlAttributesInputOutputBuilder? payload) =>
      _$this._payload = payload;

  XmlAttributesOnPayloadInputOutputBuilder();

  XmlAttributesOnPayloadInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlAttributesOnPayloadInputOutput other) {
    _$v = other as _$XmlAttributesOnPayloadInputOutput;
  }

  @override
  void update(
    void Function(XmlAttributesOnPayloadInputOutputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  XmlAttributesOnPayloadInputOutput build() => _build();

  _$XmlAttributesOnPayloadInputOutput _build() {
    _$XmlAttributesOnPayloadInputOutput _$result;
    try {
      _$result =
          _$v ??
          _$XmlAttributesOnPayloadInputOutput._(payload: _payload?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        _payload?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'XmlAttributesOnPayloadInputOutput',
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
