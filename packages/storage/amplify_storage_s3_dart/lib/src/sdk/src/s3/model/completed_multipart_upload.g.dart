// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_multipart_upload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompletedMultipartUpload extends CompletedMultipartUpload {
  @override
  final _i2.BuiltList<CompletedPart>? parts;

  factory _$CompletedMultipartUpload([
    void Function(CompletedMultipartUploadBuilder)? updates,
  ]) => (CompletedMultipartUploadBuilder()..update(updates))._build();

  _$CompletedMultipartUpload._({this.parts}) : super._();
  @override
  CompletedMultipartUpload rebuild(
    void Function(CompletedMultipartUploadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CompletedMultipartUploadBuilder toBuilder() =>
      CompletedMultipartUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompletedMultipartUpload && parts == other.parts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CompletedMultipartUploadBuilder
    implements
        Builder<CompletedMultipartUpload, CompletedMultipartUploadBuilder> {
  _$CompletedMultipartUpload? _$v;

  _i2.ListBuilder<CompletedPart>? _parts;
  _i2.ListBuilder<CompletedPart> get parts =>
      _$this._parts ??= _i2.ListBuilder<CompletedPart>();
  set parts(_i2.ListBuilder<CompletedPart>? parts) => _$this._parts = parts;

  CompletedMultipartUploadBuilder();

  CompletedMultipartUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parts = $v.parts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompletedMultipartUpload other) {
    _$v = other as _$CompletedMultipartUpload;
  }

  @override
  void update(void Function(CompletedMultipartUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompletedMultipartUpload build() => _build();

  _$CompletedMultipartUpload _build() {
    _$CompletedMultipartUpload _$result;
    try {
      _$result = _$v ?? _$CompletedMultipartUpload._(parts: _parts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parts';
        _parts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CompletedMultipartUpload',
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
