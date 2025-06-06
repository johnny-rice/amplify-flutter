// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foo_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FooError extends FooError {
  @override
  final Map<String, String>? headers;

  factory _$FooError([void Function(FooErrorBuilder)? updates]) =>
      (FooErrorBuilder()..update(updates))._build();

  _$FooError._({this.headers}) : super._();
  @override
  FooError rebuild(void Function(FooErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooErrorBuilder toBuilder() => FooErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FooError;
  }

  @override
  int get hashCode {
    return 445467195;
  }
}

class FooErrorBuilder implements Builder<FooError, FooErrorBuilder> {
  _$FooError? _$v;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  FooErrorBuilder();

  FooErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FooError other) {
    _$v = other as _$FooError;
  }

  @override
  void update(void Function(FooErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FooError build() => _build();

  _$FooError _build() {
    final _$result = _$v ?? _$FooError._(headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
