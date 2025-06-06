// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greeting_with_errors_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GreetingWithErrorsInput extends GreetingWithErrorsInput {
  @override
  final String? greeting;

  factory _$GreetingWithErrorsInput([
    void Function(GreetingWithErrorsInputBuilder)? updates,
  ]) => (GreetingWithErrorsInputBuilder()..update(updates))._build();

  _$GreetingWithErrorsInput._({this.greeting}) : super._();
  @override
  GreetingWithErrorsInput rebuild(
    void Function(GreetingWithErrorsInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GreetingWithErrorsInputBuilder toBuilder() =>
      GreetingWithErrorsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreetingWithErrorsInput && greeting == other.greeting;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, greeting.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GreetingWithErrorsInputBuilder
    implements
        Builder<GreetingWithErrorsInput, GreetingWithErrorsInputBuilder> {
  _$GreetingWithErrorsInput? _$v;

  String? _greeting;
  String? get greeting => _$this._greeting;
  set greeting(String? greeting) => _$this._greeting = greeting;

  GreetingWithErrorsInputBuilder();

  GreetingWithErrorsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _greeting = $v.greeting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreetingWithErrorsInput other) {
    _$v = other as _$GreetingWithErrorsInput;
  }

  @override
  void update(void Function(GreetingWithErrorsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreetingWithErrorsInput build() => _build();

  _$GreetingWithErrorsInput _build() {
    final _$result = _$v ?? _$GreetingWithErrorsInput._(greeting: greeting);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
