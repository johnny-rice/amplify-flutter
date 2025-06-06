// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_not_found_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceNotFoundException extends ResourceNotFoundException {
  @override
  final String? message;
  @override
  final int? code;
  @override
  final Map<String, String>? headers;

  factory _$ResourceNotFoundException([
    void Function(ResourceNotFoundExceptionBuilder)? updates,
  ]) => (ResourceNotFoundExceptionBuilder()..update(updates))._build();

  _$ResourceNotFoundException._({this.message, this.code, this.headers})
    : super._();
  @override
  ResourceNotFoundException rebuild(
    void Function(ResourceNotFoundExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourceNotFoundExceptionBuilder toBuilder() =>
      ResourceNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceNotFoundException &&
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

class ResourceNotFoundExceptionBuilder
    implements
        Builder<ResourceNotFoundException, ResourceNotFoundExceptionBuilder> {
  _$ResourceNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ResourceNotFoundExceptionBuilder();

  ResourceNotFoundExceptionBuilder get _$this {
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
  void replace(ResourceNotFoundException other) {
    _$v = other as _$ResourceNotFoundException;
  }

  @override
  void update(void Function(ResourceNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceNotFoundException build() => _build();

  _$ResourceNotFoundException _build() {
    final _$result =
        _$v ??
        _$ResourceNotFoundException._(
          message: message,
          code: code,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
