// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constant_query_string_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConstantQueryStringInput extends ConstantQueryStringInput {
  @override
  final String hello;

  factory _$ConstantQueryStringInput([
    void Function(ConstantQueryStringInputBuilder)? updates,
  ]) => (ConstantQueryStringInputBuilder()..update(updates))._build();

  _$ConstantQueryStringInput._({required this.hello}) : super._();
  @override
  ConstantQueryStringInput rebuild(
    void Function(ConstantQueryStringInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ConstantQueryStringInputBuilder toBuilder() =>
      ConstantQueryStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstantQueryStringInput && hello == other.hello;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hello.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConstantQueryStringInputBuilder
    implements
        Builder<ConstantQueryStringInput, ConstantQueryStringInputBuilder> {
  _$ConstantQueryStringInput? _$v;

  String? _hello;
  String? get hello => _$this._hello;
  set hello(String? hello) => _$this._hello = hello;

  ConstantQueryStringInputBuilder();

  ConstantQueryStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hello = $v.hello;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConstantQueryStringInput other) {
    _$v = other as _$ConstantQueryStringInput;
  }

  @override
  void update(void Function(ConstantQueryStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConstantQueryStringInput build() => _build();

  _$ConstantQueryStringInput _build() {
    final _$result =
        _$v ??
        _$ConstantQueryStringInput._(
          hello: BuiltValueNullFieldError.checkNotNull(
            hello,
            r'ConstantQueryStringInput',
            'hello',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$ConstantQueryStringInputPayload
    extends ConstantQueryStringInputPayload {
  factory _$ConstantQueryStringInputPayload([
    void Function(ConstantQueryStringInputPayloadBuilder)? updates,
  ]) => (ConstantQueryStringInputPayloadBuilder()..update(updates))._build();

  _$ConstantQueryStringInputPayload._() : super._();
  @override
  ConstantQueryStringInputPayload rebuild(
    void Function(ConstantQueryStringInputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ConstantQueryStringInputPayloadBuilder toBuilder() =>
      ConstantQueryStringInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstantQueryStringInputPayload;
  }

  @override
  int get hashCode {
    return 646295052;
  }
}

class ConstantQueryStringInputPayloadBuilder
    implements
        Builder<
          ConstantQueryStringInputPayload,
          ConstantQueryStringInputPayloadBuilder
        > {
  _$ConstantQueryStringInputPayload? _$v;

  ConstantQueryStringInputPayloadBuilder();

  @override
  void replace(ConstantQueryStringInputPayload other) {
    _$v = other as _$ConstantQueryStringInputPayload;
  }

  @override
  void update(void Function(ConstantQueryStringInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConstantQueryStringInputPayload build() => _build();

  _$ConstantQueryStringInputPayload _build() {
    final _$result = _$v ?? _$ConstantQueryStringInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
