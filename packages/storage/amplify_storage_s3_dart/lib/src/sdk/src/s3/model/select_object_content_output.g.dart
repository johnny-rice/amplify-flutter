// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_object_content_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectObjectContentOutput extends SelectObjectContentOutput {
  @override
  final SelectObjectContentEventStream? payload;

  factory _$SelectObjectContentOutput([
    void Function(SelectObjectContentOutputBuilder)? updates,
  ]) => (SelectObjectContentOutputBuilder()..update(updates))._build();

  _$SelectObjectContentOutput._({this.payload}) : super._();
  @override
  SelectObjectContentOutput rebuild(
    void Function(SelectObjectContentOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SelectObjectContentOutputBuilder toBuilder() =>
      SelectObjectContentOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectObjectContentOutput && payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectObjectContentOutputBuilder
    implements
        Builder<SelectObjectContentOutput, SelectObjectContentOutputBuilder> {
  _$SelectObjectContentOutput? _$v;

  SelectObjectContentEventStream? _payload;
  SelectObjectContentEventStream? get payload => _$this._payload;
  set payload(SelectObjectContentEventStream? payload) =>
      _$this._payload = payload;

  SelectObjectContentOutputBuilder();

  SelectObjectContentOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectObjectContentOutput other) {
    _$v = other as _$SelectObjectContentOutput;
  }

  @override
  void update(void Function(SelectObjectContentOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectObjectContentOutput build() => _build();

  _$SelectObjectContentOutput _build() {
    final _$result = _$v ?? _$SelectObjectContentOutput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
