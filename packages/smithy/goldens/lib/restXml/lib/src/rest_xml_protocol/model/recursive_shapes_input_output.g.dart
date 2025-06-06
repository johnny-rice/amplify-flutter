// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recursive_shapes_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveShapesInputOutput extends RecursiveShapesInputOutput {
  @override
  final RecursiveShapesInputOutputNested1? nested;

  factory _$RecursiveShapesInputOutput([
    void Function(RecursiveShapesInputOutputBuilder)? updates,
  ]) => (RecursiveShapesInputOutputBuilder()..update(updates))._build();

  _$RecursiveShapesInputOutput._({this.nested}) : super._();
  @override
  RecursiveShapesInputOutput rebuild(
    void Function(RecursiveShapesInputOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecursiveShapesInputOutputBuilder toBuilder() =>
      RecursiveShapesInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveShapesInputOutput && nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecursiveShapesInputOutputBuilder
    implements
        Builder<RecursiveShapesInputOutput, RecursiveShapesInputOutputBuilder> {
  _$RecursiveShapesInputOutput? _$v;

  RecursiveShapesInputOutputNested1Builder? _nested;
  RecursiveShapesInputOutputNested1Builder get nested =>
      _$this._nested ??= RecursiveShapesInputOutputNested1Builder();
  set nested(RecursiveShapesInputOutputNested1Builder? nested) =>
      _$this._nested = nested;

  RecursiveShapesInputOutputBuilder();

  RecursiveShapesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveShapesInputOutput other) {
    _$v = other as _$RecursiveShapesInputOutput;
  }

  @override
  void update(void Function(RecursiveShapesInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecursiveShapesInputOutput build() => _build();

  _$RecursiveShapesInputOutput _build() {
    _$RecursiveShapesInputOutput _$result;
    try {
      _$result =
          _$v ?? _$RecursiveShapesInputOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecursiveShapesInputOutput',
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
