// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_parameter_value_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidParameterValueException extends InvalidParameterValueException {
  @override
  final String? type;
  @override
  final String? code;
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidParameterValueException([
    void Function(InvalidParameterValueExceptionBuilder)? updates,
  ]) => (InvalidParameterValueExceptionBuilder()..update(updates))._build();

  _$InvalidParameterValueException._({
    this.type,
    this.code,
    this.message,
    this.headers,
  }) : super._();
  @override
  InvalidParameterValueException rebuild(
    void Function(InvalidParameterValueExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvalidParameterValueExceptionBuilder toBuilder() =>
      InvalidParameterValueExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidParameterValueException &&
        type == other.type &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidParameterValueExceptionBuilder
    implements
        Builder<
          InvalidParameterValueException,
          InvalidParameterValueExceptionBuilder
        > {
  _$InvalidParameterValueException? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidParameterValueExceptionBuilder();

  InvalidParameterValueExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _code = $v.code;
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidParameterValueException other) {
    _$v = other as _$InvalidParameterValueException;
  }

  @override
  void update(void Function(InvalidParameterValueExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidParameterValueException build() => _build();

  _$InvalidParameterValueException _build() {
    final _$result =
        _$v ??
        _$InvalidParameterValueException._(
          type: type,
          code: code,
          message: message,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
