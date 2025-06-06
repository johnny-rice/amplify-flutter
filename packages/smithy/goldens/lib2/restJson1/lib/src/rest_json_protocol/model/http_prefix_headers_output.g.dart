// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_prefix_headers_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPrefixHeadersOutput extends HttpPrefixHeadersOutput {
  @override
  final String? foo;
  @override
  final _i3.BuiltMap<String, String>? fooMap;

  factory _$HttpPrefixHeadersOutput([
    void Function(HttpPrefixHeadersOutputBuilder)? updates,
  ]) => (HttpPrefixHeadersOutputBuilder()..update(updates))._build();

  _$HttpPrefixHeadersOutput._({this.foo, this.fooMap}) : super._();
  @override
  HttpPrefixHeadersOutput rebuild(
    void Function(HttpPrefixHeadersOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersOutputBuilder toBuilder() =>
      HttpPrefixHeadersOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersOutput &&
        foo == other.foo &&
        fooMap == other.fooMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, fooMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpPrefixHeadersOutputBuilder
    implements
        Builder<HttpPrefixHeadersOutput, HttpPrefixHeadersOutputBuilder> {
  _$HttpPrefixHeadersOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i3.MapBuilder<String, String>? _fooMap;
  _i3.MapBuilder<String, String> get fooMap =>
      _$this._fooMap ??= _i3.MapBuilder<String, String>();
  set fooMap(_i3.MapBuilder<String, String>? fooMap) => _$this._fooMap = fooMap;

  HttpPrefixHeadersOutputBuilder();

  HttpPrefixHeadersOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _fooMap = $v.fooMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPrefixHeadersOutput other) {
    _$v = other as _$HttpPrefixHeadersOutput;
  }

  @override
  void update(void Function(HttpPrefixHeadersOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersOutput build() => _build();

  _$HttpPrefixHeadersOutput _build() {
    _$HttpPrefixHeadersOutput _$result;
    try {
      _$result =
          _$v ??
          _$HttpPrefixHeadersOutput._(foo: foo, fooMap: _fooMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooMap';
        _fooMap?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HttpPrefixHeadersOutput',
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

class _$HttpPrefixHeadersOutputPayload extends HttpPrefixHeadersOutputPayload {
  factory _$HttpPrefixHeadersOutputPayload([
    void Function(HttpPrefixHeadersOutputPayloadBuilder)? updates,
  ]) => (HttpPrefixHeadersOutputPayloadBuilder()..update(updates))._build();

  _$HttpPrefixHeadersOutputPayload._() : super._();
  @override
  HttpPrefixHeadersOutputPayload rebuild(
    void Function(HttpPrefixHeadersOutputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersOutputPayloadBuilder toBuilder() =>
      HttpPrefixHeadersOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersOutputPayload;
  }

  @override
  int get hashCode {
    return 58070888;
  }
}

class HttpPrefixHeadersOutputPayloadBuilder
    implements
        Builder<
          HttpPrefixHeadersOutputPayload,
          HttpPrefixHeadersOutputPayloadBuilder
        > {
  _$HttpPrefixHeadersOutputPayload? _$v;

  HttpPrefixHeadersOutputPayloadBuilder();

  @override
  void replace(HttpPrefixHeadersOutputPayload other) {
    _$v = other as _$HttpPrefixHeadersOutputPayload;
  }

  @override
  void update(void Function(HttpPrefixHeadersOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersOutputPayload build() => _build();

  _$HttpPrefixHeadersOutputPayload _build() {
    final _$result = _$v ?? _$HttpPrefixHeadersOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
