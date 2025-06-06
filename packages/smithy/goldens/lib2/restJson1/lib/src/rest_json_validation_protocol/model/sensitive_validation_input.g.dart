// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensitive_validation_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SensitiveValidationInput extends SensitiveValidationInput {
  @override
  final String? string;

  factory _$SensitiveValidationInput([
    void Function(SensitiveValidationInputBuilder)? updates,
  ]) => (SensitiveValidationInputBuilder()..update(updates))._build();

  _$SensitiveValidationInput._({this.string}) : super._();
  @override
  SensitiveValidationInput rebuild(
    void Function(SensitiveValidationInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SensitiveValidationInputBuilder toBuilder() =>
      SensitiveValidationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SensitiveValidationInput && string == other.string;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SensitiveValidationInputBuilder
    implements
        Builder<SensitiveValidationInput, SensitiveValidationInputBuilder> {
  _$SensitiveValidationInput? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  SensitiveValidationInputBuilder();

  SensitiveValidationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SensitiveValidationInput other) {
    _$v = other as _$SensitiveValidationInput;
  }

  @override
  void update(void Function(SensitiveValidationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SensitiveValidationInput build() => _build();

  _$SensitiveValidationInput _build() {
    final _$result = _$v ?? _$SensitiveValidationInput._(string: string);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
