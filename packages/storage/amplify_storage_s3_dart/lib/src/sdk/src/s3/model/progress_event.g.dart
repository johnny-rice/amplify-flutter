// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProgressEvent extends ProgressEvent {
  @override
  final Progress? details;

  factory _$ProgressEvent([void Function(ProgressEventBuilder)? updates]) =>
      (ProgressEventBuilder()..update(updates))._build();

  _$ProgressEvent._({this.details}) : super._();
  @override
  ProgressEvent rebuild(void Function(ProgressEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressEventBuilder toBuilder() => ProgressEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgressEvent && details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProgressEventBuilder
    implements Builder<ProgressEvent, ProgressEventBuilder> {
  _$ProgressEvent? _$v;

  ProgressBuilder? _details;
  ProgressBuilder get details => _$this._details ??= ProgressBuilder();
  set details(ProgressBuilder? details) => _$this._details = details;

  ProgressEventBuilder();

  ProgressEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgressEvent other) {
    _$v = other as _$ProgressEvent;
  }

  @override
  void update(void Function(ProgressEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProgressEvent build() => _build();

  _$ProgressEvent _build() {
    _$ProgressEvent _$result;
    try {
      _$result = _$v ?? _$ProgressEvent._(details: _details?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProgressEvent',
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
