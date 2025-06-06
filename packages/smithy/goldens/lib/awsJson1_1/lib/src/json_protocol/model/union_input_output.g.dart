// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'union_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnionInputOutput extends UnionInputOutput {
  @override
  final MyUnion? contents;

  factory _$UnionInputOutput([
    void Function(UnionInputOutputBuilder)? updates,
  ]) => (UnionInputOutputBuilder()..update(updates))._build();

  _$UnionInputOutput._({this.contents}) : super._();
  @override
  UnionInputOutput rebuild(void Function(UnionInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnionInputOutputBuilder toBuilder() =>
      UnionInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnionInputOutput && contents == other.contents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnionInputOutputBuilder
    implements Builder<UnionInputOutput, UnionInputOutputBuilder> {
  _$UnionInputOutput? _$v;

  MyUnion? _contents;
  MyUnion? get contents => _$this._contents;
  set contents(MyUnion? contents) => _$this._contents = contents;

  UnionInputOutputBuilder();

  UnionInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contents = $v.contents;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnionInputOutput other) {
    _$v = other as _$UnionInputOutput;
  }

  @override
  void update(void Function(UnionInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnionInputOutput build() => _build();

  _$UnionInputOutput _build() {
    final _$result = _$v ?? _$UnionInputOutput._(contents: contents);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
