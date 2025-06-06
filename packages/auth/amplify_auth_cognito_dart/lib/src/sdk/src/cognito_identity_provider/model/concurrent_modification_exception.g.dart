// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concurrent_modification_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConcurrentModificationException
    extends ConcurrentModificationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ConcurrentModificationException([
    void Function(ConcurrentModificationExceptionBuilder)? updates,
  ]) => (ConcurrentModificationExceptionBuilder()..update(updates))._build();

  _$ConcurrentModificationException._({this.message, this.headers}) : super._();
  @override
  ConcurrentModificationException rebuild(
    void Function(ConcurrentModificationExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ConcurrentModificationExceptionBuilder toBuilder() =>
      ConcurrentModificationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConcurrentModificationException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConcurrentModificationExceptionBuilder
    implements
        Builder<
          ConcurrentModificationException,
          ConcurrentModificationExceptionBuilder
        > {
  _$ConcurrentModificationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ConcurrentModificationExceptionBuilder();

  ConcurrentModificationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConcurrentModificationException other) {
    _$v = other as _$ConcurrentModificationException;
  }

  @override
  void update(void Function(ConcurrentModificationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConcurrentModificationException build() => _build();

  _$ConcurrentModificationException _build() {
    final _$result =
        _$v ??
        _$ConcurrentModificationException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
