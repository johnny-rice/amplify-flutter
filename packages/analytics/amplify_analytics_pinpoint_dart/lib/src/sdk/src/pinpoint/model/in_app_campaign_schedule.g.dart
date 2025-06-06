// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_app_campaign_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppCampaignSchedule extends InAppCampaignSchedule {
  @override
  final String? endDate;
  @override
  final CampaignEventFilter? eventFilter;
  @override
  final QuietTime? quietTime;

  factory _$InAppCampaignSchedule([
    void Function(InAppCampaignScheduleBuilder)? updates,
  ]) => (InAppCampaignScheduleBuilder()..update(updates))._build();

  _$InAppCampaignSchedule._({this.endDate, this.eventFilter, this.quietTime})
    : super._();
  @override
  InAppCampaignSchedule rebuild(
    void Function(InAppCampaignScheduleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InAppCampaignScheduleBuilder toBuilder() =>
      InAppCampaignScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppCampaignSchedule &&
        endDate == other.endDate &&
        eventFilter == other.eventFilter &&
        quietTime == other.quietTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, eventFilter.hashCode);
    _$hash = $jc(_$hash, quietTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InAppCampaignScheduleBuilder
    implements Builder<InAppCampaignSchedule, InAppCampaignScheduleBuilder> {
  _$InAppCampaignSchedule? _$v;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  CampaignEventFilterBuilder? _eventFilter;
  CampaignEventFilterBuilder get eventFilter =>
      _$this._eventFilter ??= CampaignEventFilterBuilder();
  set eventFilter(CampaignEventFilterBuilder? eventFilter) =>
      _$this._eventFilter = eventFilter;

  QuietTimeBuilder? _quietTime;
  QuietTimeBuilder get quietTime => _$this._quietTime ??= QuietTimeBuilder();
  set quietTime(QuietTimeBuilder? quietTime) => _$this._quietTime = quietTime;

  InAppCampaignScheduleBuilder();

  InAppCampaignScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endDate = $v.endDate;
      _eventFilter = $v.eventFilter?.toBuilder();
      _quietTime = $v.quietTime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppCampaignSchedule other) {
    _$v = other as _$InAppCampaignSchedule;
  }

  @override
  void update(void Function(InAppCampaignScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppCampaignSchedule build() => _build();

  _$InAppCampaignSchedule _build() {
    _$InAppCampaignSchedule _$result;
    try {
      _$result =
          _$v ??
          _$InAppCampaignSchedule._(
            endDate: endDate,
            eventFilter: _eventFilter?.build(),
            quietTime: _quietTime?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventFilter';
        _eventFilter?.build();
        _$failedField = 'quietTime';
        _quietTime?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InAppCampaignSchedule',
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
