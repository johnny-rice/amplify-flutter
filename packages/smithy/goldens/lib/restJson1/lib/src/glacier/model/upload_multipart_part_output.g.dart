// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_multipart_part_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadMultipartPartOutput extends UploadMultipartPartOutput {
  @override
  final String? checksum;

  factory _$UploadMultipartPartOutput([
    void Function(UploadMultipartPartOutputBuilder)? updates,
  ]) => (UploadMultipartPartOutputBuilder()..update(updates))._build();

  _$UploadMultipartPartOutput._({this.checksum}) : super._();
  @override
  UploadMultipartPartOutput rebuild(
    void Function(UploadMultipartPartOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UploadMultipartPartOutputBuilder toBuilder() =>
      UploadMultipartPartOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadMultipartPartOutput && checksum == other.checksum;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadMultipartPartOutputBuilder
    implements
        Builder<UploadMultipartPartOutput, UploadMultipartPartOutputBuilder> {
  _$UploadMultipartPartOutput? _$v;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  UploadMultipartPartOutputBuilder();

  UploadMultipartPartOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksum = $v.checksum;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadMultipartPartOutput other) {
    _$v = other as _$UploadMultipartPartOutput;
  }

  @override
  void update(void Function(UploadMultipartPartOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadMultipartPartOutput build() => _build();

  _$UploadMultipartPartOutput _build() {
    final _$result = _$v ?? _$UploadMultipartPartOutput._(checksum: checksum);
    replace(_$result);
    return _$result;
  }
}

class _$UploadMultipartPartOutputPayload
    extends UploadMultipartPartOutputPayload {
  factory _$UploadMultipartPartOutputPayload([
    void Function(UploadMultipartPartOutputPayloadBuilder)? updates,
  ]) => (UploadMultipartPartOutputPayloadBuilder()..update(updates))._build();

  _$UploadMultipartPartOutputPayload._() : super._();
  @override
  UploadMultipartPartOutputPayload rebuild(
    void Function(UploadMultipartPartOutputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UploadMultipartPartOutputPayloadBuilder toBuilder() =>
      UploadMultipartPartOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadMultipartPartOutputPayload;
  }

  @override
  int get hashCode {
    return 527861857;
  }
}

class UploadMultipartPartOutputPayloadBuilder
    implements
        Builder<
          UploadMultipartPartOutputPayload,
          UploadMultipartPartOutputPayloadBuilder
        > {
  _$UploadMultipartPartOutputPayload? _$v;

  UploadMultipartPartOutputPayloadBuilder();

  @override
  void replace(UploadMultipartPartOutputPayload other) {
    _$v = other as _$UploadMultipartPartOutputPayload;
  }

  @override
  void update(void Function(UploadMultipartPartOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadMultipartPartOutputPayload build() => _build();

  _$UploadMultipartPartOutputPayload _build() {
    final _$result = _$v ?? _$UploadMultipartPartOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
