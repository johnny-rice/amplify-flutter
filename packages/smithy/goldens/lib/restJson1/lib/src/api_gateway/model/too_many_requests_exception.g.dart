// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'too_many_requests_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TooManyRequestsException extends TooManyRequestsException {
  @override
  final String? retryAfterSeconds;
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$TooManyRequestsException([
    void Function(TooManyRequestsExceptionBuilder)? updates,
  ]) => (TooManyRequestsExceptionBuilder()..update(updates))._build();

  _$TooManyRequestsException._({
    this.retryAfterSeconds,
    this.message,
    this.headers,
  }) : super._();
  @override
  TooManyRequestsException rebuild(
    void Function(TooManyRequestsExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TooManyRequestsExceptionBuilder toBuilder() =>
      TooManyRequestsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TooManyRequestsException &&
        retryAfterSeconds == other.retryAfterSeconds &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, retryAfterSeconds.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TooManyRequestsExceptionBuilder
    implements
        Builder<TooManyRequestsException, TooManyRequestsExceptionBuilder> {
  _$TooManyRequestsException? _$v;

  String? _retryAfterSeconds;
  String? get retryAfterSeconds => _$this._retryAfterSeconds;
  set retryAfterSeconds(String? retryAfterSeconds) =>
      _$this._retryAfterSeconds = retryAfterSeconds;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TooManyRequestsExceptionBuilder();

  TooManyRequestsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retryAfterSeconds = $v.retryAfterSeconds;
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TooManyRequestsException other) {
    _$v = other as _$TooManyRequestsException;
  }

  @override
  void update(void Function(TooManyRequestsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TooManyRequestsException build() => _build();

  _$TooManyRequestsException _build() {
    final _$result =
        _$v ??
        _$TooManyRequestsException._(
          retryAfterSeconds: retryAfterSeconds,
          message: message,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

class _$TooManyRequestsExceptionPayload
    extends TooManyRequestsExceptionPayload {
  @override
  final String? message;

  factory _$TooManyRequestsExceptionPayload([
    void Function(TooManyRequestsExceptionPayloadBuilder)? updates,
  ]) => (TooManyRequestsExceptionPayloadBuilder()..update(updates))._build();

  _$TooManyRequestsExceptionPayload._({this.message}) : super._();
  @override
  TooManyRequestsExceptionPayload rebuild(
    void Function(TooManyRequestsExceptionPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TooManyRequestsExceptionPayloadBuilder toBuilder() =>
      TooManyRequestsExceptionPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TooManyRequestsExceptionPayload && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TooManyRequestsExceptionPayloadBuilder
    implements
        Builder<
          TooManyRequestsExceptionPayload,
          TooManyRequestsExceptionPayloadBuilder
        > {
  _$TooManyRequestsExceptionPayload? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TooManyRequestsExceptionPayloadBuilder();

  TooManyRequestsExceptionPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TooManyRequestsExceptionPayload other) {
    _$v = other as _$TooManyRequestsExceptionPayload;
  }

  @override
  void update(void Function(TooManyRequestsExceptionPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TooManyRequestsExceptionPayload build() => _build();

  _$TooManyRequestsExceptionPayload _build() {
    final _$result =
        _$v ?? _$TooManyRequestsExceptionPayload._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
