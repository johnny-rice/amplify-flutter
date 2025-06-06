// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Session extends Session {
  @override
  final int? duration;
  @override
  final String id;
  @override
  final String startTimestamp;
  @override
  final String? stopTimestamp;

  factory _$Session([void Function(SessionBuilder)? updates]) =>
      (SessionBuilder()..update(updates))._build();

  _$Session._({
    this.duration,
    required this.id,
    required this.startTimestamp,
    this.stopTimestamp,
  }) : super._();
  @override
  Session rebuild(void Function(SessionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionBuilder toBuilder() => SessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Session &&
        duration == other.duration &&
        id == other.id &&
        startTimestamp == other.startTimestamp &&
        stopTimestamp == other.stopTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startTimestamp.hashCode);
    _$hash = $jc(_$hash, stopTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SessionBuilder implements Builder<Session, SessionBuilder> {
  _$Session? _$v;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _startTimestamp;
  String? get startTimestamp => _$this._startTimestamp;
  set startTimestamp(String? startTimestamp) =>
      _$this._startTimestamp = startTimestamp;

  String? _stopTimestamp;
  String? get stopTimestamp => _$this._stopTimestamp;
  set stopTimestamp(String? stopTimestamp) =>
      _$this._stopTimestamp = stopTimestamp;

  SessionBuilder();

  SessionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _duration = $v.duration;
      _id = $v.id;
      _startTimestamp = $v.startTimestamp;
      _stopTimestamp = $v.stopTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Session other) {
    _$v = other as _$Session;
  }

  @override
  void update(void Function(SessionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Session build() => _build();

  _$Session _build() {
    final _$result =
        _$v ??
        _$Session._(
          duration: duration,
          id: BuiltValueNullFieldError.checkNotNull(id, r'Session', 'id'),
          startTimestamp: BuiltValueNullFieldError.checkNotNull(
            startTimestamp,
            r'Session',
            'startTimestamp',
          ),
          stopTimestamp: stopTimestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
