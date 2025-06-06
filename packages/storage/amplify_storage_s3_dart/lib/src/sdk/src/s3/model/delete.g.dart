// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Delete extends Delete {
  @override
  final _i2.BuiltList<ObjectIdentifier> objects;
  @override
  final bool? quiet;

  factory _$Delete([void Function(DeleteBuilder)? updates]) =>
      (DeleteBuilder()..update(updates))._build();

  _$Delete._({required this.objects, this.quiet}) : super._();
  @override
  Delete rebuild(void Function(DeleteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBuilder toBuilder() => DeleteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Delete && objects == other.objects && quiet == other.quiet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, objects.hashCode);
    _$hash = $jc(_$hash, quiet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteBuilder implements Builder<Delete, DeleteBuilder> {
  _$Delete? _$v;

  _i2.ListBuilder<ObjectIdentifier>? _objects;
  _i2.ListBuilder<ObjectIdentifier> get objects =>
      _$this._objects ??= _i2.ListBuilder<ObjectIdentifier>();
  set objects(_i2.ListBuilder<ObjectIdentifier>? objects) =>
      _$this._objects = objects;

  bool? _quiet;
  bool? get quiet => _$this._quiet;
  set quiet(bool? quiet) => _$this._quiet = quiet;

  DeleteBuilder();

  DeleteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objects = $v.objects.toBuilder();
      _quiet = $v.quiet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Delete other) {
    _$v = other as _$Delete;
  }

  @override
  void update(void Function(DeleteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Delete build() => _build();

  _$Delete _build() {
    _$Delete _$result;
    try {
      _$result = _$v ?? _$Delete._(objects: objects.build(), quiet: quiet);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objects';
        objects.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Delete',
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
