// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_checksum_really_not_required_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpChecksumReallyNotRequiredInput
    extends HttpChecksumReallyNotRequiredInput {
  @override
  final ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.Uint8List? content;

  factory _$HttpChecksumReallyNotRequiredInput([
    void Function(HttpChecksumReallyNotRequiredInputBuilder)? updates,
  ]) => (HttpChecksumReallyNotRequiredInputBuilder()..update(updates))._build();

  _$HttpChecksumReallyNotRequiredInput._({this.checksumAlgorithm, this.content})
    : super._();
  @override
  HttpChecksumReallyNotRequiredInput rebuild(
    void Function(HttpChecksumReallyNotRequiredInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpChecksumReallyNotRequiredInputBuilder toBuilder() =>
      HttpChecksumReallyNotRequiredInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpChecksumReallyNotRequiredInput &&
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

class HttpChecksumReallyNotRequiredInputBuilder
    implements
        Builder<
          HttpChecksumReallyNotRequiredInput,
          HttpChecksumReallyNotRequiredInputBuilder
        > {
  _$HttpChecksumReallyNotRequiredInput? _$v;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.Uint8List? _content;
  _i2.Uint8List? get content => _$this._content;
  set content(_i2.Uint8List? content) => _$this._content = content;

  HttpChecksumReallyNotRequiredInputBuilder();

  HttpChecksumReallyNotRequiredInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumAlgorithm = $v.checksumAlgorithm;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpChecksumReallyNotRequiredInput other) {
    _$v = other as _$HttpChecksumReallyNotRequiredInput;
  }

  @override
  void update(
    void Function(HttpChecksumReallyNotRequiredInputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HttpChecksumReallyNotRequiredInput build() => _build();

  _$HttpChecksumReallyNotRequiredInput _build() {
    final _$result =
        _$v ??
        _$HttpChecksumReallyNotRequiredInput._(
          checksumAlgorithm: checksumAlgorithm,
          content: content,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
