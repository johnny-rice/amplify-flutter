// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'no_such_bucket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchBucket extends NoSuchBucket {
  @override
  final Map<String, String>? headers;

  factory _$NoSuchBucket([void Function(NoSuchBucketBuilder)? updates]) =>
      (NoSuchBucketBuilder()..update(updates))._build();

  _$NoSuchBucket._({this.headers}) : super._();
  @override
  NoSuchBucket rebuild(void Function(NoSuchBucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchBucketBuilder toBuilder() => NoSuchBucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchBucket;
  }

  @override
  int get hashCode {
    return 317849630;
  }
}

class NoSuchBucketBuilder
    implements Builder<NoSuchBucket, NoSuchBucketBuilder> {
  _$NoSuchBucket? _$v;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchBucketBuilder();

  NoSuchBucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoSuchBucket other) {
    _$v = other as _$NoSuchBucket;
  }

  @override
  void update(void Function(NoSuchBucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchBucket build() => _build();

  _$NoSuchBucket _build() {
    final _$result = _$v ?? _$NoSuchBucket._(headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
