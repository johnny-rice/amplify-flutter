// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respond_to_auth_challenge_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RespondToAuthChallengeResponse extends RespondToAuthChallengeResponse {
  @override
  final ChallengeNameType? challengeName;
  @override
  final String? session;
  @override
  final _i2.BuiltMap<String, String?>? challengeParameters;
  @override
  final AuthenticationResultType? authenticationResult;

  factory _$RespondToAuthChallengeResponse([
    void Function(RespondToAuthChallengeResponseBuilder)? updates,
  ]) => (RespondToAuthChallengeResponseBuilder()..update(updates))._build();

  _$RespondToAuthChallengeResponse._({
    this.challengeName,
    this.session,
    this.challengeParameters,
    this.authenticationResult,
  }) : super._();
  @override
  RespondToAuthChallengeResponse rebuild(
    void Function(RespondToAuthChallengeResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RespondToAuthChallengeResponseBuilder toBuilder() =>
      RespondToAuthChallengeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RespondToAuthChallengeResponse &&
        challengeName == other.challengeName &&
        session == other.session &&
        challengeParameters == other.challengeParameters &&
        authenticationResult == other.authenticationResult;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, challengeName.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, challengeParameters.hashCode);
    _$hash = $jc(_$hash, authenticationResult.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RespondToAuthChallengeResponseBuilder
    implements
        Builder<
          RespondToAuthChallengeResponse,
          RespondToAuthChallengeResponseBuilder
        > {
  _$RespondToAuthChallengeResponse? _$v;

  ChallengeNameType? _challengeName;
  ChallengeNameType? get challengeName => _$this._challengeName;
  set challengeName(ChallengeNameType? challengeName) =>
      _$this._challengeName = challengeName;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  _i2.MapBuilder<String, String?>? _challengeParameters;
  _i2.MapBuilder<String, String?> get challengeParameters =>
      _$this._challengeParameters ??= _i2.MapBuilder<String, String?>();
  set challengeParameters(
    _i2.MapBuilder<String, String?>? challengeParameters,
  ) => _$this._challengeParameters = challengeParameters;

  AuthenticationResultTypeBuilder? _authenticationResult;
  AuthenticationResultTypeBuilder get authenticationResult =>
      _$this._authenticationResult ??= AuthenticationResultTypeBuilder();
  set authenticationResult(
    AuthenticationResultTypeBuilder? authenticationResult,
  ) => _$this._authenticationResult = authenticationResult;

  RespondToAuthChallengeResponseBuilder();

  RespondToAuthChallengeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _challengeName = $v.challengeName;
      _session = $v.session;
      _challengeParameters = $v.challengeParameters?.toBuilder();
      _authenticationResult = $v.authenticationResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RespondToAuthChallengeResponse other) {
    _$v = other as _$RespondToAuthChallengeResponse;
  }

  @override
  void update(void Function(RespondToAuthChallengeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RespondToAuthChallengeResponse build() => _build();

  _$RespondToAuthChallengeResponse _build() {
    _$RespondToAuthChallengeResponse _$result;
    try {
      _$result =
          _$v ??
          _$RespondToAuthChallengeResponse._(
            challengeName: challengeName,
            session: session,
            challengeParameters: _challengeParameters?.build(),
            authenticationResult: _authenticationResult?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'challengeParameters';
        _challengeParameters?.build();
        _$failedField = 'authenticationResult';
        _authenticationResult?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RespondToAuthChallengeResponse',
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
