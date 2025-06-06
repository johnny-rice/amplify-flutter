// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'srp_device_password_verifier_worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(CognitoDeviceSecrets.serializer)
          ..add(SrpDevicePasswordVerifierMessage.serializer)
          ..add(SrpInitResult.serializer)
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          ))
        .build();
Serializer<SrpDevicePasswordVerifierMessage>
_$srpDevicePasswordVerifierMessageSerializer =
    _$SrpDevicePasswordVerifierMessageSerializer();

class _$SrpDevicePasswordVerifierMessageSerializer
    implements StructuredSerializer<SrpDevicePasswordVerifierMessage> {
  @override
  final Iterable<Type> types = const [
    SrpDevicePasswordVerifierMessage,
    _$SrpDevicePasswordVerifierMessage,
  ];
  @override
  final String wireName = 'SrpDevicePasswordVerifierMessage';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SrpDevicePasswordVerifierMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'initResult',
      serializers.serialize(
        object.initResult,
        specifiedType: const FullType(SrpInitResult),
      ),
      'clientId',
      serializers.serialize(
        object.clientId,
        specifiedType: const FullType(String),
      ),
      'deviceSecrets',
      serializers.serialize(
        object.deviceSecrets,
        specifiedType: const FullType(CognitoDeviceSecrets),
      ),
      'challengeParameters',
      serializers.serialize(
        object.challengeParameters,
        specifiedType: const FullType(BuiltMap, const [
          const FullType(String),
          const FullType(String),
        ]),
      ),
    ];
    Object? value;
    value = object.clientSecret;
    if (value != null) {
      result
        ..add('clientSecret')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  SrpDevicePasswordVerifierMessage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SrpDevicePasswordVerifierMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'initResult':
          result.initResult =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SrpInitResult),
                  )!
                  as SrpInitResult;
          break;
        case 'clientId':
          result.clientId =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'clientSecret':
          result.clientSecret =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'deviceSecrets':
          result.deviceSecrets =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CognitoDeviceSecrets),
                  )!
                  as CognitoDeviceSecrets;
          break;
        case 'challengeParameters':
          result.challengeParameters =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, const [
                      const FullType(String),
                      const FullType(String),
                    ]),
                  )!
                  as BuiltMap<String, String>;
          break;
      }
    }

    return result.build();
  }
}

class _$SrpDevicePasswordVerifierMessage
    extends SrpDevicePasswordVerifierMessage {
  @override
  final SrpInitResult initResult;
  @override
  final String clientId;
  @override
  final String? clientSecret;
  @override
  final CognitoDeviceSecrets deviceSecrets;
  @override
  final BuiltMap<String, String> challengeParameters;

  factory _$SrpDevicePasswordVerifierMessage([
    void Function(SrpDevicePasswordVerifierMessageBuilder)? updates,
  ]) => (SrpDevicePasswordVerifierMessageBuilder()..update(updates))._build();

  _$SrpDevicePasswordVerifierMessage._({
    required this.initResult,
    required this.clientId,
    this.clientSecret,
    required this.deviceSecrets,
    required this.challengeParameters,
  }) : super._();
  @override
  SrpDevicePasswordVerifierMessage rebuild(
    void Function(SrpDevicePasswordVerifierMessageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SrpDevicePasswordVerifierMessageBuilder toBuilder() =>
      SrpDevicePasswordVerifierMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SrpDevicePasswordVerifierMessage &&
        initResult == other.initResult &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        deviceSecrets == other.deviceSecrets &&
        challengeParameters == other.challengeParameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, initResult.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, deviceSecrets.hashCode);
    _$hash = $jc(_$hash, challengeParameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SrpDevicePasswordVerifierMessage')
          ..add('initResult', initResult)
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('deviceSecrets', deviceSecrets)
          ..add('challengeParameters', challengeParameters))
        .toString();
  }
}

class SrpDevicePasswordVerifierMessageBuilder
    implements
        Builder<
          SrpDevicePasswordVerifierMessage,
          SrpDevicePasswordVerifierMessageBuilder
        > {
  _$SrpDevicePasswordVerifierMessage? _$v;

  SrpInitResult? _initResult;
  SrpInitResult? get initResult => _$this._initResult;
  set initResult(SrpInitResult? initResult) => _$this._initResult = initResult;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  CognitoDeviceSecrets? _deviceSecrets;
  CognitoDeviceSecrets? get deviceSecrets => _$this._deviceSecrets;
  set deviceSecrets(CognitoDeviceSecrets? deviceSecrets) =>
      _$this._deviceSecrets = deviceSecrets;

  BuiltMap<String, String>? _challengeParameters;
  BuiltMap<String, String>? get challengeParameters =>
      _$this._challengeParameters;
  set challengeParameters(BuiltMap<String, String>? challengeParameters) =>
      _$this._challengeParameters = challengeParameters;

  SrpDevicePasswordVerifierMessageBuilder();

  SrpDevicePasswordVerifierMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initResult = $v.initResult;
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _deviceSecrets = $v.deviceSecrets;
      _challengeParameters = $v.challengeParameters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SrpDevicePasswordVerifierMessage other) {
    _$v = other as _$SrpDevicePasswordVerifierMessage;
  }

  @override
  void update(void Function(SrpDevicePasswordVerifierMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SrpDevicePasswordVerifierMessage build() => _build();

  _$SrpDevicePasswordVerifierMessage _build() {
    final _$result =
        _$v ??
        _$SrpDevicePasswordVerifierMessage._(
          initResult: BuiltValueNullFieldError.checkNotNull(
            initResult,
            r'SrpDevicePasswordVerifierMessage',
            'initResult',
          ),
          clientId: BuiltValueNullFieldError.checkNotNull(
            clientId,
            r'SrpDevicePasswordVerifierMessage',
            'clientId',
          ),
          clientSecret: clientSecret,
          deviceSecrets: BuiltValueNullFieldError.checkNotNull(
            deviceSecrets,
            r'SrpDevicePasswordVerifierMessage',
            'deviceSecrets',
          ),
          challengeParameters: BuiltValueNullFieldError.checkNotNull(
            challengeParameters,
            r'SrpDevicePasswordVerifierMessage',
            'challengeParameters',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
