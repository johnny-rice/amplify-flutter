// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_payload_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StringPayloadInput extends StringPayloadInput {
  @override
  final String? payload;

  factory _$StringPayloadInput([
    void Function(StringPayloadInputBuilder)? updates,
  ]) => (StringPayloadInputBuilder()..update(updates))._build();

  _$StringPayloadInput._({this.payload}) : super._();
  @override
  StringPayloadInput rebuild(
    void Function(StringPayloadInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StringPayloadInputBuilder toBuilder() =>
      StringPayloadInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringPayloadInput && payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StringPayloadInputBuilder
    implements Builder<StringPayloadInput, StringPayloadInputBuilder> {
  _$StringPayloadInput? _$v;

  String? _payload;
  String? get payload => _$this._payload;
  set payload(String? payload) => _$this._payload = payload;

  StringPayloadInputBuilder();

  StringPayloadInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StringPayloadInput other) {
    _$v = other as _$StringPayloadInput;
  }

  @override
  void update(void Function(StringPayloadInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StringPayloadInput build() => _build();

  _$StringPayloadInput _build() {
    final _$result = _$v ?? _$StringPayloadInput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
