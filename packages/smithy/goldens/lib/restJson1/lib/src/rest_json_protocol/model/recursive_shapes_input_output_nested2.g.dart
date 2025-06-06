// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recursive_shapes_input_output_nested2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveShapesInputOutputNested2
    extends RecursiveShapesInputOutputNested2 {
  @override
  final String? bar;
  @override
  final RecursiveShapesInputOutputNested1? recursiveMember;

  factory _$RecursiveShapesInputOutputNested2([
    void Function(RecursiveShapesInputOutputNested2Builder)? updates,
  ]) => (RecursiveShapesInputOutputNested2Builder()..update(updates))._build();

  _$RecursiveShapesInputOutputNested2._({this.bar, this.recursiveMember})
    : super._();
  @override
  RecursiveShapesInputOutputNested2 rebuild(
    void Function(RecursiveShapesInputOutputNested2Builder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecursiveShapesInputOutputNested2Builder toBuilder() =>
      RecursiveShapesInputOutputNested2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveShapesInputOutputNested2 &&
        bar == other.bar &&
        recursiveMember == other.recursiveMember;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bar.hashCode);
    _$hash = $jc(_$hash, recursiveMember.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecursiveShapesInputOutputNested2Builder
    implements
        Builder<
          RecursiveShapesInputOutputNested2,
          RecursiveShapesInputOutputNested2Builder
        > {
  _$RecursiveShapesInputOutputNested2? _$v;

  String? _bar;
  String? get bar => _$this._bar;
  set bar(String? bar) => _$this._bar = bar;

  RecursiveShapesInputOutputNested1Builder? _recursiveMember;
  RecursiveShapesInputOutputNested1Builder get recursiveMember =>
      _$this._recursiveMember ??= RecursiveShapesInputOutputNested1Builder();
  set recursiveMember(
    RecursiveShapesInputOutputNested1Builder? recursiveMember,
  ) => _$this._recursiveMember = recursiveMember;

  RecursiveShapesInputOutputNested2Builder();

  RecursiveShapesInputOutputNested2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bar = $v.bar;
      _recursiveMember = $v.recursiveMember?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveShapesInputOutputNested2 other) {
    _$v = other as _$RecursiveShapesInputOutputNested2;
  }

  @override
  void update(
    void Function(RecursiveShapesInputOutputNested2Builder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RecursiveShapesInputOutputNested2 build() => _build();

  _$RecursiveShapesInputOutputNested2 _build() {
    _$RecursiveShapesInputOutputNested2 _$result;
    try {
      _$result =
          _$v ??
          _$RecursiveShapesInputOutputNested2._(
            bar: bar,
            recursiveMember: _recursiveMember?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recursiveMember';
        _recursiveMember?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecursiveShapesInputOutputNested2',
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
