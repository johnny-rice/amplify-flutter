// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recursive_shapes_input_output_nested1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveShapesInputOutputNested1
    extends RecursiveShapesInputOutputNested1 {
  @override
  final String? foo;
  @override
  final RecursiveShapesInputOutputNested2? nested;

  factory _$RecursiveShapesInputOutputNested1([
    void Function(RecursiveShapesInputOutputNested1Builder)? updates,
  ]) => (RecursiveShapesInputOutputNested1Builder()..update(updates))._build();

  _$RecursiveShapesInputOutputNested1._({this.foo, this.nested}) : super._();
  @override
  RecursiveShapesInputOutputNested1 rebuild(
    void Function(RecursiveShapesInputOutputNested1Builder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecursiveShapesInputOutputNested1Builder toBuilder() =>
      RecursiveShapesInputOutputNested1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveShapesInputOutputNested1 &&
        foo == other.foo &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecursiveShapesInputOutputNested1Builder
    implements
        Builder<
          RecursiveShapesInputOutputNested1,
          RecursiveShapesInputOutputNested1Builder
        > {
  _$RecursiveShapesInputOutputNested1? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  RecursiveShapesInputOutputNested2Builder? _nested;
  RecursiveShapesInputOutputNested2Builder get nested =>
      _$this._nested ??= RecursiveShapesInputOutputNested2Builder();
  set nested(RecursiveShapesInputOutputNested2Builder? nested) =>
      _$this._nested = nested;

  RecursiveShapesInputOutputNested1Builder();

  RecursiveShapesInputOutputNested1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveShapesInputOutputNested1 other) {
    _$v = other as _$RecursiveShapesInputOutputNested1;
  }

  @override
  void update(
    void Function(RecursiveShapesInputOutputNested1Builder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RecursiveShapesInputOutputNested1 build() => _build();

  _$RecursiveShapesInputOutputNested1 _build() {
    _$RecursiveShapesInputOutputNested1 _$result;
    try {
      _$result =
          _$v ??
          _$RecursiveShapesInputOutputNested1._(
            foo: foo,
            nested: _nested?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecursiveShapesInputOutputNested1',
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
