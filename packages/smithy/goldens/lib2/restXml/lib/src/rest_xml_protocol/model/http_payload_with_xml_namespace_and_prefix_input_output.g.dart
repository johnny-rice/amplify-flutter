// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_payload_with_xml_namespace_and_prefix_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput
    extends HttpPayloadWithXmlNamespaceAndPrefixInputOutput {
  @override
  final PayloadWithXmlNamespaceAndPrefix? nested;

  factory _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput([
    void Function(HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder)?
    updates,
  ]) =>
      (HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder()
            ..update(updates))
          ._build();

  _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput._({this.nested})
    : super._();
  @override
  HttpPayloadWithXmlNamespaceAndPrefixInputOutput rebuild(
    void Function(HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder toBuilder() =>
      HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPayloadWithXmlNamespaceAndPrefixInputOutput &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder
    implements
        Builder<
          HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
          HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder
        > {
  _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput? _$v;

  PayloadWithXmlNamespaceAndPrefixBuilder? _nested;
  PayloadWithXmlNamespaceAndPrefixBuilder get nested =>
      _$this._nested ??= PayloadWithXmlNamespaceAndPrefixBuilder();
  set nested(PayloadWithXmlNamespaceAndPrefixBuilder? nested) =>
      _$this._nested = nested;

  HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder();

  HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPayloadWithXmlNamespaceAndPrefixInputOutput other) {
    _$v = other as _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput;
  }

  @override
  void update(
    void Function(HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HttpPayloadWithXmlNamespaceAndPrefixInputOutput build() => _build();

  _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput _build() {
    _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput _$result;
    try {
      _$result =
          _$v ??
          _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput._(
            nested: _nested?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HttpPayloadWithXmlNamespaceAndPrefixInputOutput',
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
