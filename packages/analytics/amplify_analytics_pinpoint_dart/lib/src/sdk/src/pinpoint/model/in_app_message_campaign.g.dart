// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_app_message_campaign.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessageCampaign extends InAppMessageCampaign {
  @override
  final String? campaignId;
  @override
  final int? dailyCap;
  @override
  final InAppMessage? inAppMessage;
  @override
  final int? priority;
  @override
  final InAppCampaignSchedule? schedule;
  @override
  final int? sessionCap;
  @override
  final int? totalCap;
  @override
  final String? treatmentId;

  factory _$InAppMessageCampaign([
    void Function(InAppMessageCampaignBuilder)? updates,
  ]) => (InAppMessageCampaignBuilder()..update(updates))._build();

  _$InAppMessageCampaign._({
    this.campaignId,
    this.dailyCap,
    this.inAppMessage,
    this.priority,
    this.schedule,
    this.sessionCap,
    this.totalCap,
    this.treatmentId,
  }) : super._();
  @override
  InAppMessageCampaign rebuild(
    void Function(InAppMessageCampaignBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InAppMessageCampaignBuilder toBuilder() =>
      InAppMessageCampaignBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessageCampaign &&
        campaignId == other.campaignId &&
        dailyCap == other.dailyCap &&
        inAppMessage == other.inAppMessage &&
        priority == other.priority &&
        schedule == other.schedule &&
        sessionCap == other.sessionCap &&
        totalCap == other.totalCap &&
        treatmentId == other.treatmentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, campaignId.hashCode);
    _$hash = $jc(_$hash, dailyCap.hashCode);
    _$hash = $jc(_$hash, inAppMessage.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, sessionCap.hashCode);
    _$hash = $jc(_$hash, totalCap.hashCode);
    _$hash = $jc(_$hash, treatmentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InAppMessageCampaignBuilder
    implements Builder<InAppMessageCampaign, InAppMessageCampaignBuilder> {
  _$InAppMessageCampaign? _$v;

  String? _campaignId;
  String? get campaignId => _$this._campaignId;
  set campaignId(String? campaignId) => _$this._campaignId = campaignId;

  int? _dailyCap;
  int? get dailyCap => _$this._dailyCap;
  set dailyCap(int? dailyCap) => _$this._dailyCap = dailyCap;

  InAppMessageBuilder? _inAppMessage;
  InAppMessageBuilder get inAppMessage =>
      _$this._inAppMessage ??= InAppMessageBuilder();
  set inAppMessage(InAppMessageBuilder? inAppMessage) =>
      _$this._inAppMessage = inAppMessage;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  InAppCampaignScheduleBuilder? _schedule;
  InAppCampaignScheduleBuilder get schedule =>
      _$this._schedule ??= InAppCampaignScheduleBuilder();
  set schedule(InAppCampaignScheduleBuilder? schedule) =>
      _$this._schedule = schedule;

  int? _sessionCap;
  int? get sessionCap => _$this._sessionCap;
  set sessionCap(int? sessionCap) => _$this._sessionCap = sessionCap;

  int? _totalCap;
  int? get totalCap => _$this._totalCap;
  set totalCap(int? totalCap) => _$this._totalCap = totalCap;

  String? _treatmentId;
  String? get treatmentId => _$this._treatmentId;
  set treatmentId(String? treatmentId) => _$this._treatmentId = treatmentId;

  InAppMessageCampaignBuilder();

  InAppMessageCampaignBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _campaignId = $v.campaignId;
      _dailyCap = $v.dailyCap;
      _inAppMessage = $v.inAppMessage?.toBuilder();
      _priority = $v.priority;
      _schedule = $v.schedule?.toBuilder();
      _sessionCap = $v.sessionCap;
      _totalCap = $v.totalCap;
      _treatmentId = $v.treatmentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessageCampaign other) {
    _$v = other as _$InAppMessageCampaign;
  }

  @override
  void update(void Function(InAppMessageCampaignBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessageCampaign build() => _build();

  _$InAppMessageCampaign _build() {
    _$InAppMessageCampaign _$result;
    try {
      _$result =
          _$v ??
          _$InAppMessageCampaign._(
            campaignId: campaignId,
            dailyCap: dailyCap,
            inAppMessage: _inAppMessage?.build(),
            priority: priority,
            schedule: _schedule?.build(),
            sessionCap: sessionCap,
            totalCap: totalCap,
            treatmentId: treatmentId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inAppMessage';
        _inAppMessage?.build();

        _$failedField = 'schedule';
        _schedule?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InAppMessageCampaign',
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
