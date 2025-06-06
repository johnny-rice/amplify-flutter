// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_checksum_really_required_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpChecksumReallyRequiredInput
    extends HttpChecksumReallyRequiredInput {
  @override
  final ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.Uint8List? content;

  factory _$HttpChecksumReallyRequiredInput([
    void Function(HttpChecksumReallyRequiredInputBuilder)? updates,
  ]) => (HttpChecksumReallyRequiredInputBuilder()..update(updates))._build();

  _$HttpChecksumReallyRequiredInput._({this.checksumAlgorithm, this.content})
    : super._();
  @override
  HttpChecksumReallyRequiredInput rebuild(
    void Function(HttpChecksumReallyRequiredInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpChecksumReallyRequiredInputBuilder toBuilder() =>
      HttpChecksumReallyRequiredInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpChecksumReallyRequiredInput &&
        checksumAlgorithm == other.checksumAlgorithm &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpChecksumReallyRequiredInputBuilder
    implements
        Builder<
          HttpChecksumReallyRequiredInput,
          HttpChecksumReallyRequiredInputBuilder
        > {
  _$HttpChecksumReallyRequiredInput? _$v;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.Uint8List? _content;
  _i2.Uint8List? get content => _$this._content;
  set content(_i2.Uint8List? content) => _$this._content = content;

  HttpChecksumReallyRequiredInputBuilder();

  HttpChecksumReallyRequiredInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumAlgorithm = $v.checksumAlgorithm;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpChecksumReallyRequiredInput other) {
    _$v = other as _$HttpChecksumReallyRequiredInput;
  }

  @override
  void update(void Function(HttpChecksumReallyRequiredInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpChecksumReallyRequiredInput build() => _build();

  _$HttpChecksumReallyRequiredInput _build() {
    final _$result =
        _$v ??
        _$HttpChecksumReallyRequiredInput._(
          checksumAlgorithm: checksumAlgorithm,
          content: content,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
