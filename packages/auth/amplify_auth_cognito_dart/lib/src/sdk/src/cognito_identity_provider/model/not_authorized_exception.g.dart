// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'not_authorized_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotAuthorizedException extends NotAuthorizedException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$NotAuthorizedException([
    void Function(NotAuthorizedExceptionBuilder)? updates,
  ]) => (NotAuthorizedExceptionBuilder()..update(updates))._build();

  _$NotAuthorizedException._({this.message, this.headers}) : super._();
  @override
  NotAuthorizedException rebuild(
    void Function(NotAuthorizedExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotAuthorizedExceptionBuilder toBuilder() =>
      NotAuthorizedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotAuthorizedException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NotAuthorizedExceptionBuilder
    implements Builder<NotAuthorizedException, NotAuthorizedExceptionBuilder> {
  _$NotAuthorizedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NotAuthorizedExceptionBuilder();

  NotAuthorizedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotAuthorizedException other) {
    _$v = other as _$NotAuthorizedException;
  }

  @override
  void update(void Function(NotAuthorizedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotAuthorizedException build() => _build();

  _$NotAuthorizedException _build() {
    final _$result =
        _$v ?? _$NotAuthorizedException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
