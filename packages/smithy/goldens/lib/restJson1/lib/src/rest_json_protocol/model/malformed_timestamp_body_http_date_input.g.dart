// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_timestamp_body_http_date_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampBodyHttpDateInput
    extends MalformedTimestampBodyHttpDateInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampBodyHttpDateInput([
    void Function(MalformedTimestampBodyHttpDateInputBuilder)? updates,
  ]) =>
      (MalformedTimestampBodyHttpDateInputBuilder()..update(updates))._build();

  _$MalformedTimestampBodyHttpDateInput._({required this.timestamp})
    : super._();
  @override
  MalformedTimestampBodyHttpDateInput rebuild(
    void Function(MalformedTimestampBodyHttpDateInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampBodyHttpDateInputBuilder toBuilder() =>
      MalformedTimestampBodyHttpDateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampBodyHttpDateInput &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedTimestampBodyHttpDateInputBuilder
    implements
        Builder<
          MalformedTimestampBodyHttpDateInput,
          MalformedTimestampBodyHttpDateInputBuilder
        > {
  _$MalformedTimestampBodyHttpDateInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampBodyHttpDateInputBuilder();

  MalformedTimestampBodyHttpDateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampBodyHttpDateInput other) {
    _$v = other as _$MalformedTimestampBodyHttpDateInput;
  }

  @override
  void update(
    void Function(MalformedTimestampBodyHttpDateInputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampBodyHttpDateInput build() => _build();

  _$MalformedTimestampBodyHttpDateInput _build() {
    final _$result =
        _$v ??
        _$MalformedTimestampBodyHttpDateInput._(
          timestamp: BuiltValueNullFieldError.checkNotNull(
            timestamp,
            r'MalformedTimestampBodyHttpDateInput',
            'timestamp',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
