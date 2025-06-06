// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_timestamp_body_date_time_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampBodyDateTimeInput
    extends MalformedTimestampBodyDateTimeInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampBodyDateTimeInput([
    void Function(MalformedTimestampBodyDateTimeInputBuilder)? updates,
  ]) =>
      (MalformedTimestampBodyDateTimeInputBuilder()..update(updates))._build();

  _$MalformedTimestampBodyDateTimeInput._({required this.timestamp})
    : super._();
  @override
  MalformedTimestampBodyDateTimeInput rebuild(
    void Function(MalformedTimestampBodyDateTimeInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampBodyDateTimeInputBuilder toBuilder() =>
      MalformedTimestampBodyDateTimeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampBodyDateTimeInput &&
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

class MalformedTimestampBodyDateTimeInputBuilder
    implements
        Builder<
          MalformedTimestampBodyDateTimeInput,
          MalformedTimestampBodyDateTimeInputBuilder
        > {
  _$MalformedTimestampBodyDateTimeInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampBodyDateTimeInputBuilder();

  MalformedTimestampBodyDateTimeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampBodyDateTimeInput other) {
    _$v = other as _$MalformedTimestampBodyDateTimeInput;
  }

  @override
  void update(
    void Function(MalformedTimestampBodyDateTimeInputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampBodyDateTimeInput build() => _build();

  _$MalformedTimestampBodyDateTimeInput _build() {
    final _$result =
        _$v ??
        _$MalformedTimestampBodyDateTimeInput._(
          timestamp: BuiltValueNullFieldError.checkNotNull(
            timestamp,
            r'MalformedTimestampBodyDateTimeInput',
            'timestamp',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
