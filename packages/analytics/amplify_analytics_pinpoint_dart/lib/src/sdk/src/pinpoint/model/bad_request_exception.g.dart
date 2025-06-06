// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bad_request_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BadRequestException extends BadRequestException {
  @override
  final String? message;
  @override
  final String? requestId;
  @override
  final Map<String, String>? headers;

  factory _$BadRequestException([
    void Function(BadRequestExceptionBuilder)? updates,
  ]) => (BadRequestExceptionBuilder()..update(updates))._build();

  _$BadRequestException._({this.message, this.requestId, this.headers})
    : super._();
  @override
  BadRequestException rebuild(
    void Function(BadRequestExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BadRequestExceptionBuilder toBuilder() =>
      BadRequestExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BadRequestException &&
        message == other.message &&
        requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BadRequestExceptionBuilder
    implements Builder<BadRequestException, BadRequestExceptionBuilder> {
  _$BadRequestException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  BadRequestExceptionBuilder();

  BadRequestExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _requestId = $v.requestId;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BadRequestException other) {
    _$v = other as _$BadRequestException;
  }

  @override
  void update(void Function(BadRequestExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BadRequestException build() => _build();

  _$BadRequestException _build() {
    final _$result =
        _$v ??
        _$BadRequestException._(
          message: message,
          requestId: requestId,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
