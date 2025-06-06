// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limit_exceeded_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LimitExceededException extends LimitExceededException {
  @override
  final String? message;
  @override
  final int? code;
  @override
  final Map<String, String>? headers;

  factory _$LimitExceededException([
    void Function(LimitExceededExceptionBuilder)? updates,
  ]) => (LimitExceededExceptionBuilder()..update(updates))._build();

  _$LimitExceededException._({this.message, this.code, this.headers})
    : super._();
  @override
  LimitExceededException rebuild(
    void Function(LimitExceededExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LimitExceededExceptionBuilder toBuilder() =>
      LimitExceededExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LimitExceededException &&
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

class LimitExceededExceptionBuilder
    implements Builder<LimitExceededException, LimitExceededExceptionBuilder> {
  _$LimitExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  LimitExceededExceptionBuilder();

  LimitExceededExceptionBuilder get _$this {
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
  void replace(LimitExceededException other) {
    _$v = other as _$LimitExceededException;
  }

  @override
  void update(void Function(LimitExceededExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LimitExceededException build() => _build();

  _$LimitExceededException _build() {
    final _$result =
        _$v ??
        _$LimitExceededException._(
          message: message,
          code: code,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
