// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_response_code_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpResponseCodeOutput extends HttpResponseCodeOutput {
  @override
  final int? status;

  factory _$HttpResponseCodeOutput([
    void Function(HttpResponseCodeOutputBuilder)? updates,
  ]) => (HttpResponseCodeOutputBuilder()..update(updates))._build();

  _$HttpResponseCodeOutput._({this.status}) : super._();
  @override
  HttpResponseCodeOutput rebuild(
    void Function(HttpResponseCodeOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpResponseCodeOutputBuilder toBuilder() =>
      HttpResponseCodeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpResponseCodeOutput && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpResponseCodeOutputBuilder
    implements Builder<HttpResponseCodeOutput, HttpResponseCodeOutputBuilder> {
  _$HttpResponseCodeOutput? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  HttpResponseCodeOutputBuilder();

  HttpResponseCodeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpResponseCodeOutput other) {
    _$v = other as _$HttpResponseCodeOutput;
  }

  @override
  void update(void Function(HttpResponseCodeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpResponseCodeOutput build() => _build();

  _$HttpResponseCodeOutput _build() {
    final _$result = _$v ?? _$HttpResponseCodeOutput._(status: status);
    replace(_$result);
    return _$result;
  }
}

class _$HttpResponseCodeOutputPayload extends HttpResponseCodeOutputPayload {
  factory _$HttpResponseCodeOutputPayload([
    void Function(HttpResponseCodeOutputPayloadBuilder)? updates,
  ]) => (HttpResponseCodeOutputPayloadBuilder()..update(updates))._build();

  _$HttpResponseCodeOutputPayload._() : super._();
  @override
  HttpResponseCodeOutputPayload rebuild(
    void Function(HttpResponseCodeOutputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpResponseCodeOutputPayloadBuilder toBuilder() =>
      HttpResponseCodeOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpResponseCodeOutputPayload;
  }

  @override
  int get hashCode {
    return 333822464;
  }
}

class HttpResponseCodeOutputPayloadBuilder
    implements
        Builder<
          HttpResponseCodeOutputPayload,
          HttpResponseCodeOutputPayloadBuilder
        > {
  _$HttpResponseCodeOutputPayload? _$v;

  HttpResponseCodeOutputPayloadBuilder();

  @override
  void replace(HttpResponseCodeOutputPayload other) {
    _$v = other as _$HttpResponseCodeOutputPayload;
  }

  @override
  void update(void Function(HttpResponseCodeOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpResponseCodeOutputPayload build() => _build();

  _$HttpResponseCodeOutputPayload _build() {
    final _$result = _$v ?? _$HttpResponseCodeOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
