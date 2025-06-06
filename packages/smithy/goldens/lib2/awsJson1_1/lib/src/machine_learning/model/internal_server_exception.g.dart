// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_server_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InternalServerException extends InternalServerException {
  @override
  final String? message;
  @override
  final int? code;
  @override
  final Map<String, String>? headers;

  factory _$InternalServerException([
    void Function(InternalServerExceptionBuilder)? updates,
  ]) => (InternalServerExceptionBuilder()..update(updates))._build();

  _$InternalServerException._({this.message, this.code, this.headers})
    : super._();
  @override
  InternalServerException rebuild(
    void Function(InternalServerExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InternalServerExceptionBuilder toBuilder() =>
      InternalServerExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InternalServerException &&
        message == other.message &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InternalServerExceptionBuilder
    implements
        Builder<InternalServerException, InternalServerExceptionBuilder> {
  _$InternalServerException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InternalServerExceptionBuilder();

  InternalServerExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _code = $v.code;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InternalServerException other) {
    _$v = other as _$InternalServerException;
  }

  @override
  void update(void Function(InternalServerExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InternalServerException build() => _build();

  _$InternalServerException _build() {
    final _$result =
        _$v ??
        _$InternalServerException._(
          message: message,
          code: code,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
