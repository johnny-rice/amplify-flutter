// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_type_header_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaTypeHeaderOutput extends MediaTypeHeaderOutput {
  @override
  final _i3.JsonObject? json;

  factory _$MediaTypeHeaderOutput([
    void Function(MediaTypeHeaderOutputBuilder)? updates,
  ]) => (MediaTypeHeaderOutputBuilder()..update(updates))._build();

  _$MediaTypeHeaderOutput._({this.json}) : super._();
  @override
  MediaTypeHeaderOutput rebuild(
    void Function(MediaTypeHeaderOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MediaTypeHeaderOutputBuilder toBuilder() =>
      MediaTypeHeaderOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaTypeHeaderOutput && json == other.json;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, json.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MediaTypeHeaderOutputBuilder
    implements Builder<MediaTypeHeaderOutput, MediaTypeHeaderOutputBuilder> {
  _$MediaTypeHeaderOutput? _$v;

  _i3.JsonObject? _json;
  _i3.JsonObject? get json => _$this._json;
  set json(_i3.JsonObject? json) => _$this._json = json;

  MediaTypeHeaderOutputBuilder();

  MediaTypeHeaderOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _json = $v.json;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaTypeHeaderOutput other) {
    _$v = other as _$MediaTypeHeaderOutput;
  }

  @override
  void update(void Function(MediaTypeHeaderOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaTypeHeaderOutput build() => _build();

  _$MediaTypeHeaderOutput _build() {
    final _$result = _$v ?? _$MediaTypeHeaderOutput._(json: json);
    replace(_$result);
    return _$result;
  }
}

class _$MediaTypeHeaderOutputPayload extends MediaTypeHeaderOutputPayload {
  factory _$MediaTypeHeaderOutputPayload([
    void Function(MediaTypeHeaderOutputPayloadBuilder)? updates,
  ]) => (MediaTypeHeaderOutputPayloadBuilder()..update(updates))._build();

  _$MediaTypeHeaderOutputPayload._() : super._();
  @override
  MediaTypeHeaderOutputPayload rebuild(
    void Function(MediaTypeHeaderOutputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MediaTypeHeaderOutputPayloadBuilder toBuilder() =>
      MediaTypeHeaderOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaTypeHeaderOutputPayload;
  }

  @override
  int get hashCode {
    return 1046285147;
  }
}

class MediaTypeHeaderOutputPayloadBuilder
    implements
        Builder<
          MediaTypeHeaderOutputPayload,
          MediaTypeHeaderOutputPayloadBuilder
        > {
  _$MediaTypeHeaderOutputPayload? _$v;

  MediaTypeHeaderOutputPayloadBuilder();

  @override
  void replace(MediaTypeHeaderOutputPayload other) {
    _$v = other as _$MediaTypeHeaderOutputPayload;
  }

  @override
  void update(void Function(MediaTypeHeaderOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaTypeHeaderOutputPayload build() => _build();

  _$MediaTypeHeaderOutputPayload _build() {
    final _$result = _$v ?? _$MediaTypeHeaderOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
