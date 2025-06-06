// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_object_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectOutput extends GetObjectOutput {
  @override
  final _i3.Stream<List<int>> body;
  @override
  final int? contentLength;
  @override
  final String? contentRange;

  factory _$GetObjectOutput([void Function(GetObjectOutputBuilder)? updates]) =>
      (GetObjectOutputBuilder()..update(updates))._build();

  _$GetObjectOutput._({
    required this.body,
    this.contentLength,
    this.contentRange,
  }) : super._();
  @override
  GetObjectOutput rebuild(void Function(GetObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectOutputBuilder toBuilder() => GetObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectOutput &&
        body == other.body &&
        contentLength == other.contentLength &&
        contentRange == other.contentRange;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, contentLength.hashCode);
    _$hash = $jc(_$hash, contentRange.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectOutputBuilder
    implements Builder<GetObjectOutput, GetObjectOutputBuilder> {
  _$GetObjectOutput? _$v;

  _i3.Stream<List<int>>? _body;
  _i3.Stream<List<int>>? get body => _$this._body;
  set body(_i3.Stream<List<int>>? body) => _$this._body = body;

  int? _contentLength;
  int? get contentLength => _$this._contentLength;
  set contentLength(int? contentLength) =>
      _$this._contentLength = contentLength;

  String? _contentRange;
  String? get contentRange => _$this._contentRange;
  set contentRange(String? contentRange) => _$this._contentRange = contentRange;

  GetObjectOutputBuilder() {
    GetObjectOutput._init(this);
  }

  GetObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _contentLength = $v.contentLength;
      _contentRange = $v.contentRange;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectOutput other) {
    _$v = other as _$GetObjectOutput;
  }

  @override
  void update(void Function(GetObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectOutput build() => _build();

  _$GetObjectOutput _build() {
    final _$result =
        _$v ??
        _$GetObjectOutput._(
          body: BuiltValueNullFieldError.checkNotNull(
            body,
            r'GetObjectOutput',
            'body',
          ),
          contentLength: contentLength,
          contentRange: contentRange,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
