// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_no_payload_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestNoPayloadInputOutput extends TestNoPayloadInputOutput {
  @override
  final String? testId;

  factory _$TestNoPayloadInputOutput([
    void Function(TestNoPayloadInputOutputBuilder)? updates,
  ]) => (TestNoPayloadInputOutputBuilder()..update(updates))._build();

  _$TestNoPayloadInputOutput._({this.testId}) : super._();
  @override
  TestNoPayloadInputOutput rebuild(
    void Function(TestNoPayloadInputOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TestNoPayloadInputOutputBuilder toBuilder() =>
      TestNoPayloadInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestNoPayloadInputOutput && testId == other.testId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, testId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestNoPayloadInputOutputBuilder
    implements
        Builder<TestNoPayloadInputOutput, TestNoPayloadInputOutputBuilder> {
  _$TestNoPayloadInputOutput? _$v;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  TestNoPayloadInputOutputBuilder();

  TestNoPayloadInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testId = $v.testId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestNoPayloadInputOutput other) {
    _$v = other as _$TestNoPayloadInputOutput;
  }

  @override
  void update(void Function(TestNoPayloadInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestNoPayloadInputOutput build() => _build();

  _$TestNoPayloadInputOutput _build() {
    final _$result = _$v ?? _$TestNoPayloadInputOutput._(testId: testId);
    replace(_$result);
    return _$result;
  }
}

class _$TestNoPayloadInputOutputPayload
    extends TestNoPayloadInputOutputPayload {
  factory _$TestNoPayloadInputOutputPayload([
    void Function(TestNoPayloadInputOutputPayloadBuilder)? updates,
  ]) => (TestNoPayloadInputOutputPayloadBuilder()..update(updates))._build();

  _$TestNoPayloadInputOutputPayload._() : super._();
  @override
  TestNoPayloadInputOutputPayload rebuild(
    void Function(TestNoPayloadInputOutputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TestNoPayloadInputOutputPayloadBuilder toBuilder() =>
      TestNoPayloadInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestNoPayloadInputOutputPayload;
  }

  @override
  int get hashCode {
    return 22767573;
  }
}

class TestNoPayloadInputOutputPayloadBuilder
    implements
        Builder<
          TestNoPayloadInputOutputPayload,
          TestNoPayloadInputOutputPayloadBuilder
        > {
  _$TestNoPayloadInputOutputPayload? _$v;

  TestNoPayloadInputOutputPayloadBuilder();

  @override
  void replace(TestNoPayloadInputOutputPayload other) {
    _$v = other as _$TestNoPayloadInputOutputPayload;
  }

  @override
  void update(void Function(TestNoPayloadInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestNoPayloadInputOutputPayload build() => _build();

  _$TestNoPayloadInputOutputPayload _build() {
    final _$result = _$v ?? _$TestNoPayloadInputOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
