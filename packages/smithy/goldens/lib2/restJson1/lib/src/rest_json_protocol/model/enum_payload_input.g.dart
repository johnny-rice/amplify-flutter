// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_payload_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnumPayloadInput extends EnumPayloadInput {
  @override
  final StringEnum? payload;

  factory _$EnumPayloadInput([
    void Function(EnumPayloadInputBuilder)? updates,
  ]) => (EnumPayloadInputBuilder()..update(updates))._build();

  _$EnumPayloadInput._({this.payload}) : super._();
  @override
  EnumPayloadInput rebuild(void Function(EnumPayloadInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnumPayloadInputBuilder toBuilder() =>
      EnumPayloadInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumPayloadInput && payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnumPayloadInputBuilder
    implements Builder<EnumPayloadInput, EnumPayloadInputBuilder> {
  _$EnumPayloadInput? _$v;

  StringEnum? _payload;
  StringEnum? get payload => _$this._payload;
  set payload(StringEnum? payload) => _$this._payload = payload;

  EnumPayloadInputBuilder();

  EnumPayloadInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnumPayloadInput other) {
    _$v = other as _$EnumPayloadInput;
  }

  @override
  void update(void Function(EnumPayloadInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnumPayloadInput build() => _build();

  _$EnumPayloadInput _build() {
    final _$result = _$v ?? _$EnumPayloadInput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
