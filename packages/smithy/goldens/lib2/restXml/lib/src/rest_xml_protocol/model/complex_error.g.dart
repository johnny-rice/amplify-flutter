// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplexError extends ComplexError {
  @override
  final String? header;
  @override
  final String? topLevel;
  @override
  final ComplexNestedErrorData? nested;
  @override
  final Map<String, String>? headers;

  factory _$ComplexError([void Function(ComplexErrorBuilder)? updates]) =>
      (ComplexErrorBuilder()..update(updates))._build();

  _$ComplexError._({this.header, this.topLevel, this.nested, this.headers})
    : super._();
  @override
  ComplexError rebuild(void Function(ComplexErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplexErrorBuilder toBuilder() => ComplexErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplexError &&
        header == other.header &&
        topLevel == other.topLevel &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, topLevel.hashCode);
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplexErrorBuilder
    implements Builder<ComplexError, ComplexErrorBuilder> {
  _$ComplexError? _$v;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _topLevel;
  String? get topLevel => _$this._topLevel;
  set topLevel(String? topLevel) => _$this._topLevel = topLevel;

  ComplexNestedErrorDataBuilder? _nested;
  ComplexNestedErrorDataBuilder get nested =>
      _$this._nested ??= ComplexNestedErrorDataBuilder();
  set nested(ComplexNestedErrorDataBuilder? nested) => _$this._nested = nested;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ComplexErrorBuilder();

  ComplexErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _header = $v.header;
      _topLevel = $v.topLevel;
      _nested = $v.nested?.toBuilder();
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplexError other) {
    _$v = other as _$ComplexError;
  }

  @override
  void update(void Function(ComplexErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplexError build() => _build();

  _$ComplexError _build() {
    _$ComplexError _$result;
    try {
      _$result =
          _$v ??
          _$ComplexError._(
            header: header,
            topLevel: topLevel,
            nested: _nested?.build(),
            headers: headers,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ComplexError',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ComplexErrorPayload extends ComplexErrorPayload {
  @override
  final ComplexNestedErrorData? nested;
  @override
  final String? topLevel;

  factory _$ComplexErrorPayload([
    void Function(ComplexErrorPayloadBuilder)? updates,
  ]) => (ComplexErrorPayloadBuilder()..update(updates))._build();

  _$ComplexErrorPayload._({this.nested, this.topLevel}) : super._();
  @override
  ComplexErrorPayload rebuild(
    void Function(ComplexErrorPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ComplexErrorPayloadBuilder toBuilder() =>
      ComplexErrorPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplexErrorPayload &&
        nested == other.nested &&
        topLevel == other.topLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jc(_$hash, topLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplexErrorPayloadBuilder
    implements Builder<ComplexErrorPayload, ComplexErrorPayloadBuilder> {
  _$ComplexErrorPayload? _$v;

  ComplexNestedErrorDataBuilder? _nested;
  ComplexNestedErrorDataBuilder get nested =>
      _$this._nested ??= ComplexNestedErrorDataBuilder();
  set nested(ComplexNestedErrorDataBuilder? nested) => _$this._nested = nested;

  String? _topLevel;
  String? get topLevel => _$this._topLevel;
  set topLevel(String? topLevel) => _$this._topLevel = topLevel;

  ComplexErrorPayloadBuilder();

  ComplexErrorPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _topLevel = $v.topLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplexErrorPayload other) {
    _$v = other as _$ComplexErrorPayload;
  }

  @override
  void update(void Function(ComplexErrorPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplexErrorPayload build() => _build();

  _$ComplexErrorPayload _build() {
    _$ComplexErrorPayload _$result;
    try {
      _$result =
          _$v ??
          _$ComplexErrorPayload._(nested: _nested?.build(), topLevel: topLevel);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ComplexErrorPayload',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
