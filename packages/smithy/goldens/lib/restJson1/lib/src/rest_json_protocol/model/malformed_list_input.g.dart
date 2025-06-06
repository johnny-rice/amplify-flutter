// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_list_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedListInput extends MalformedListInput {
  @override
  final _i3.BuiltList<String>? bodyList;

  factory _$MalformedListInput([
    void Function(MalformedListInputBuilder)? updates,
  ]) => (MalformedListInputBuilder()..update(updates))._build();

  _$MalformedListInput._({this.bodyList}) : super._();
  @override
  MalformedListInput rebuild(
    void Function(MalformedListInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MalformedListInputBuilder toBuilder() =>
      MalformedListInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedListInput && bodyList == other.bodyList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bodyList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedListInputBuilder
    implements Builder<MalformedListInput, MalformedListInputBuilder> {
  _$MalformedListInput? _$v;

  _i3.ListBuilder<String>? _bodyList;
  _i3.ListBuilder<String> get bodyList =>
      _$this._bodyList ??= _i3.ListBuilder<String>();
  set bodyList(_i3.ListBuilder<String>? bodyList) =>
      _$this._bodyList = bodyList;

  MalformedListInputBuilder();

  MalformedListInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bodyList = $v.bodyList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedListInput other) {
    _$v = other as _$MalformedListInput;
  }

  @override
  void update(void Function(MalformedListInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedListInput build() => _build();

  _$MalformedListInput _build() {
    _$MalformedListInput _$result;
    try {
      _$result = _$v ?? _$MalformedListInput._(bodyList: _bodyList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bodyList';
        _bodyList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MalformedListInput',
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
