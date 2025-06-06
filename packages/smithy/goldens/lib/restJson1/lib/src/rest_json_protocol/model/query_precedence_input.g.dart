// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_precedence_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryPrecedenceInput extends QueryPrecedenceInput {
  @override
  final String? foo;
  @override
  final _i3.BuiltMap<String, String>? baz;

  factory _$QueryPrecedenceInput([
    void Function(QueryPrecedenceInputBuilder)? updates,
  ]) => (QueryPrecedenceInputBuilder()..update(updates))._build();

  _$QueryPrecedenceInput._({this.foo, this.baz}) : super._();
  @override
  QueryPrecedenceInput rebuild(
    void Function(QueryPrecedenceInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  QueryPrecedenceInputBuilder toBuilder() =>
      QueryPrecedenceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryPrecedenceInput &&
        foo == other.foo &&
        baz == other.baz;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, baz.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryPrecedenceInputBuilder
    implements Builder<QueryPrecedenceInput, QueryPrecedenceInputBuilder> {
  _$QueryPrecedenceInput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i3.MapBuilder<String, String>? _baz;
  _i3.MapBuilder<String, String> get baz =>
      _$this._baz ??= _i3.MapBuilder<String, String>();
  set baz(_i3.MapBuilder<String, String>? baz) => _$this._baz = baz;

  QueryPrecedenceInputBuilder();

  QueryPrecedenceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _baz = $v.baz?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryPrecedenceInput other) {
    _$v = other as _$QueryPrecedenceInput;
  }

  @override
  void update(void Function(QueryPrecedenceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryPrecedenceInput build() => _build();

  _$QueryPrecedenceInput _build() {
    _$QueryPrecedenceInput _$result;
    try {
      _$result = _$v ?? _$QueryPrecedenceInput._(foo: foo, baz: _baz?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'baz';
        _baz?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'QueryPrecedenceInput',
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

class _$QueryPrecedenceInputPayload extends QueryPrecedenceInputPayload {
  factory _$QueryPrecedenceInputPayload([
    void Function(QueryPrecedenceInputPayloadBuilder)? updates,
  ]) => (QueryPrecedenceInputPayloadBuilder()..update(updates))._build();

  _$QueryPrecedenceInputPayload._() : super._();
  @override
  QueryPrecedenceInputPayload rebuild(
    void Function(QueryPrecedenceInputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  QueryPrecedenceInputPayloadBuilder toBuilder() =>
      QueryPrecedenceInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryPrecedenceInputPayload;
  }

  @override
  int get hashCode {
    return 332690933;
  }
}

class QueryPrecedenceInputPayloadBuilder
    implements
        Builder<
          QueryPrecedenceInputPayload,
          QueryPrecedenceInputPayloadBuilder
        > {
  _$QueryPrecedenceInputPayload? _$v;

  QueryPrecedenceInputPayloadBuilder();

  @override
  void replace(QueryPrecedenceInputPayload other) {
    _$v = other as _$QueryPrecedenceInputPayload;
  }

  @override
  void update(void Function(QueryPrecedenceInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryPrecedenceInputPayload build() => _build();

  _$QueryPrecedenceInputPayload _build() {
    final _$result = _$v ?? _$QueryPrecedenceInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
