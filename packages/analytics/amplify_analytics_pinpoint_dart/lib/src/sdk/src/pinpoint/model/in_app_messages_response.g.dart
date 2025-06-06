// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_app_messages_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessagesResponse extends InAppMessagesResponse {
  @override
  final _i2.BuiltList<InAppMessageCampaign>? inAppMessageCampaigns;

  factory _$InAppMessagesResponse([
    void Function(InAppMessagesResponseBuilder)? updates,
  ]) => (InAppMessagesResponseBuilder()..update(updates))._build();

  _$InAppMessagesResponse._({this.inAppMessageCampaigns}) : super._();
  @override
  InAppMessagesResponse rebuild(
    void Function(InAppMessagesResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InAppMessagesResponseBuilder toBuilder() =>
      InAppMessagesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessagesResponse &&
        inAppMessageCampaigns == other.inAppMessageCampaigns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inAppMessageCampaigns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InAppMessagesResponseBuilder
    implements Builder<InAppMessagesResponse, InAppMessagesResponseBuilder> {
  _$InAppMessagesResponse? _$v;

  _i2.ListBuilder<InAppMessageCampaign>? _inAppMessageCampaigns;
  _i2.ListBuilder<InAppMessageCampaign> get inAppMessageCampaigns =>
      _$this._inAppMessageCampaigns ??= _i2.ListBuilder<InAppMessageCampaign>();
  set inAppMessageCampaigns(
    _i2.ListBuilder<InAppMessageCampaign>? inAppMessageCampaigns,
  ) => _$this._inAppMessageCampaigns = inAppMessageCampaigns;

  InAppMessagesResponseBuilder();

  InAppMessagesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inAppMessageCampaigns = $v.inAppMessageCampaigns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessagesResponse other) {
    _$v = other as _$InAppMessagesResponse;
  }

  @override
  void update(void Function(InAppMessagesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessagesResponse build() => _build();

  _$InAppMessagesResponse _build() {
    _$InAppMessagesResponse _$result;
    try {
      _$result =
          _$v ??
          _$InAppMessagesResponse._(
            inAppMessageCampaigns: _inAppMessageCampaigns?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inAppMessageCampaigns';
        _inAppMessageCampaigns?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InAppMessagesResponse',
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
