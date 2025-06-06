// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_label_header_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostLabelHeaderInput extends HostLabelHeaderInput {
  @override
  final String accountId;

  factory _$HostLabelHeaderInput([
    void Function(HostLabelHeaderInputBuilder)? updates,
  ]) => (HostLabelHeaderInputBuilder()..update(updates))._build();

  _$HostLabelHeaderInput._({required this.accountId}) : super._();
  @override
  HostLabelHeaderInput rebuild(
    void Function(HostLabelHeaderInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HostLabelHeaderInputBuilder toBuilder() =>
      HostLabelHeaderInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelHeaderInput && accountId == other.accountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HostLabelHeaderInputBuilder
    implements Builder<HostLabelHeaderInput, HostLabelHeaderInputBuilder> {
  _$HostLabelHeaderInput? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  HostLabelHeaderInputBuilder();

  HostLabelHeaderInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostLabelHeaderInput other) {
    _$v = other as _$HostLabelHeaderInput;
  }

  @override
  void update(void Function(HostLabelHeaderInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostLabelHeaderInput build() => _build();

  _$HostLabelHeaderInput _build() {
    final _$result =
        _$v ??
        _$HostLabelHeaderInput._(
          accountId: BuiltValueNullFieldError.checkNotNull(
            accountId,
            r'HostLabelHeaderInput',
            'accountId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$HostLabelHeaderInputPayload extends HostLabelHeaderInputPayload {
  factory _$HostLabelHeaderInputPayload([
    void Function(HostLabelHeaderInputPayloadBuilder)? updates,
  ]) => (HostLabelHeaderInputPayloadBuilder()..update(updates))._build();

  _$HostLabelHeaderInputPayload._() : super._();
  @override
  HostLabelHeaderInputPayload rebuild(
    void Function(HostLabelHeaderInputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HostLabelHeaderInputPayloadBuilder toBuilder() =>
      HostLabelHeaderInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelHeaderInputPayload;
  }

  @override
  int get hashCode {
    return 827052485;
  }
}

class HostLabelHeaderInputPayloadBuilder
    implements
        Builder<
          HostLabelHeaderInputPayload,
          HostLabelHeaderInputPayloadBuilder
        > {
  _$HostLabelHeaderInputPayload? _$v;

  HostLabelHeaderInputPayloadBuilder();

  @override
  void replace(HostLabelHeaderInputPayload other) {
    _$v = other as _$HostLabelHeaderInputPayload;
  }

  @override
  void update(void Function(HostLabelHeaderInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostLabelHeaderInputPayload build() => _build();

  _$HostLabelHeaderInputPayload _build() {
    final _$result = _$v ?? _$HostLabelHeaderInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
