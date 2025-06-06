// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_object_content_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectObjectContentRequest extends SelectObjectContentRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String expression;
  @override
  final ExpressionType expressionType;
  @override
  final RequestProgress? requestProgress;
  @override
  final InputSerialization inputSerialization;
  @override
  final OutputSerialization outputSerialization;
  @override
  final ScanRange? scanRange;
  @override
  final String? expectedBucketOwner;

  factory _$SelectObjectContentRequest([
    void Function(SelectObjectContentRequestBuilder)? updates,
  ]) => (SelectObjectContentRequestBuilder()..update(updates))._build();

  _$SelectObjectContentRequest._({
    required this.bucket,
    required this.key,
    this.sseCustomerAlgorithm,
    this.sseCustomerKey,
    this.sseCustomerKeyMd5,
    required this.expression,
    required this.expressionType,
    this.requestProgress,
    required this.inputSerialization,
    required this.outputSerialization,
    this.scanRange,
    this.expectedBucketOwner,
  }) : super._();
  @override
  SelectObjectContentRequest rebuild(
    void Function(SelectObjectContentRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SelectObjectContentRequestBuilder toBuilder() =>
      SelectObjectContentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectObjectContentRequest &&
        bucket == other.bucket &&
        key == other.key &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        expression == other.expression &&
        expressionType == other.expressionType &&
        requestProgress == other.requestProgress &&
        inputSerialization == other.inputSerialization &&
        outputSerialization == other.outputSerialization &&
        scanRange == other.scanRange &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, expressionType.hashCode);
    _$hash = $jc(_$hash, requestProgress.hashCode);
    _$hash = $jc(_$hash, inputSerialization.hashCode);
    _$hash = $jc(_$hash, outputSerialization.hashCode);
    _$hash = $jc(_$hash, scanRange.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectObjectContentRequestBuilder
    implements
        Builder<SelectObjectContentRequest, SelectObjectContentRequestBuilder> {
  _$SelectObjectContentRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKey;
  String? get sseCustomerKey => _$this._sseCustomerKey;
  set sseCustomerKey(String? sseCustomerKey) =>
      _$this._sseCustomerKey = sseCustomerKey;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  ExpressionType? _expressionType;
  ExpressionType? get expressionType => _$this._expressionType;
  set expressionType(ExpressionType? expressionType) =>
      _$this._expressionType = expressionType;

  RequestProgressBuilder? _requestProgress;
  RequestProgressBuilder get requestProgress =>
      _$this._requestProgress ??= RequestProgressBuilder();
  set requestProgress(RequestProgressBuilder? requestProgress) =>
      _$this._requestProgress = requestProgress;

  InputSerializationBuilder? _inputSerialization;
  InputSerializationBuilder get inputSerialization =>
      _$this._inputSerialization ??= InputSerializationBuilder();
  set inputSerialization(InputSerializationBuilder? inputSerialization) =>
      _$this._inputSerialization = inputSerialization;

  OutputSerializationBuilder? _outputSerialization;
  OutputSerializationBuilder get outputSerialization =>
      _$this._outputSerialization ??= OutputSerializationBuilder();
  set outputSerialization(OutputSerializationBuilder? outputSerialization) =>
      _$this._outputSerialization = outputSerialization;

  ScanRangeBuilder? _scanRange;
  ScanRangeBuilder get scanRange => _$this._scanRange ??= ScanRangeBuilder();
  set scanRange(ScanRangeBuilder? scanRange) => _$this._scanRange = scanRange;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  SelectObjectContentRequestBuilder();

  SelectObjectContentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _expression = $v.expression;
      _expressionType = $v.expressionType;
      _requestProgress = $v.requestProgress?.toBuilder();
      _inputSerialization = $v.inputSerialization.toBuilder();
      _outputSerialization = $v.outputSerialization.toBuilder();
      _scanRange = $v.scanRange?.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectObjectContentRequest other) {
    _$v = other as _$SelectObjectContentRequest;
  }

  @override
  void update(void Function(SelectObjectContentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectObjectContentRequest build() => _build();

  _$SelectObjectContentRequest _build() {
    _$SelectObjectContentRequest _$result;
    try {
      _$result =
          _$v ??
          _$SelectObjectContentRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
              bucket,
              r'SelectObjectContentRequest',
              'bucket',
            ),
            key: BuiltValueNullFieldError.checkNotNull(
              key,
              r'SelectObjectContentRequest',
              'key',
            ),
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            expression: BuiltValueNullFieldError.checkNotNull(
              expression,
              r'SelectObjectContentRequest',
              'expression',
            ),
            expressionType: BuiltValueNullFieldError.checkNotNull(
              expressionType,
              r'SelectObjectContentRequest',
              'expressionType',
            ),
            requestProgress: _requestProgress?.build(),
            inputSerialization: inputSerialization.build(),
            outputSerialization: outputSerialization.build(),
            scanRange: _scanRange?.build(),
            expectedBucketOwner: expectedBucketOwner,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestProgress';
        _requestProgress?.build();
        _$failedField = 'inputSerialization';
        inputSerialization.build();
        _$failedField = 'outputSerialization';
        outputSerialization.build();
        _$failedField = 'scanRange';
        _scanRange?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SelectObjectContentRequest',
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

class _$SelectObjectContentRequestPayload
    extends SelectObjectContentRequestPayload {
  @override
  final String expression;
  @override
  final ExpressionType expressionType;
  @override
  final InputSerialization inputSerialization;
  @override
  final OutputSerialization outputSerialization;
  @override
  final RequestProgress? requestProgress;
  @override
  final ScanRange? scanRange;

  factory _$SelectObjectContentRequestPayload([
    void Function(SelectObjectContentRequestPayloadBuilder)? updates,
  ]) => (SelectObjectContentRequestPayloadBuilder()..update(updates))._build();

  _$SelectObjectContentRequestPayload._({
    required this.expression,
    required this.expressionType,
    required this.inputSerialization,
    required this.outputSerialization,
    this.requestProgress,
    this.scanRange,
  }) : super._();
  @override
  SelectObjectContentRequestPayload rebuild(
    void Function(SelectObjectContentRequestPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SelectObjectContentRequestPayloadBuilder toBuilder() =>
      SelectObjectContentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectObjectContentRequestPayload &&
        expression == other.expression &&
        expressionType == other.expressionType &&
        inputSerialization == other.inputSerialization &&
        outputSerialization == other.outputSerialization &&
        requestProgress == other.requestProgress &&
        scanRange == other.scanRange;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, expressionType.hashCode);
    _$hash = $jc(_$hash, inputSerialization.hashCode);
    _$hash = $jc(_$hash, outputSerialization.hashCode);
    _$hash = $jc(_$hash, requestProgress.hashCode);
    _$hash = $jc(_$hash, scanRange.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectObjectContentRequestPayloadBuilder
    implements
        Builder<
          SelectObjectContentRequestPayload,
          SelectObjectContentRequestPayloadBuilder
        > {
  _$SelectObjectContentRequestPayload? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  ExpressionType? _expressionType;
  ExpressionType? get expressionType => _$this._expressionType;
  set expressionType(ExpressionType? expressionType) =>
      _$this._expressionType = expressionType;

  InputSerializationBuilder? _inputSerialization;
  InputSerializationBuilder get inputSerialization =>
      _$this._inputSerialization ??= InputSerializationBuilder();
  set inputSerialization(InputSerializationBuilder? inputSerialization) =>
      _$this._inputSerialization = inputSerialization;

  OutputSerializationBuilder? _outputSerialization;
  OutputSerializationBuilder get outputSerialization =>
      _$this._outputSerialization ??= OutputSerializationBuilder();
  set outputSerialization(OutputSerializationBuilder? outputSerialization) =>
      _$this._outputSerialization = outputSerialization;

  RequestProgressBuilder? _requestProgress;
  RequestProgressBuilder get requestProgress =>
      _$this._requestProgress ??= RequestProgressBuilder();
  set requestProgress(RequestProgressBuilder? requestProgress) =>
      _$this._requestProgress = requestProgress;

  ScanRangeBuilder? _scanRange;
  ScanRangeBuilder get scanRange => _$this._scanRange ??= ScanRangeBuilder();
  set scanRange(ScanRangeBuilder? scanRange) => _$this._scanRange = scanRange;

  SelectObjectContentRequestPayloadBuilder();

  SelectObjectContentRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _expressionType = $v.expressionType;
      _inputSerialization = $v.inputSerialization.toBuilder();
      _outputSerialization = $v.outputSerialization.toBuilder();
      _requestProgress = $v.requestProgress?.toBuilder();
      _scanRange = $v.scanRange?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectObjectContentRequestPayload other) {
    _$v = other as _$SelectObjectContentRequestPayload;
  }

  @override
  void update(
    void Function(SelectObjectContentRequestPayloadBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SelectObjectContentRequestPayload build() => _build();

  _$SelectObjectContentRequestPayload _build() {
    _$SelectObjectContentRequestPayload _$result;
    try {
      _$result =
          _$v ??
          _$SelectObjectContentRequestPayload._(
            expression: BuiltValueNullFieldError.checkNotNull(
              expression,
              r'SelectObjectContentRequestPayload',
              'expression',
            ),
            expressionType: BuiltValueNullFieldError.checkNotNull(
              expressionType,
              r'SelectObjectContentRequestPayload',
              'expressionType',
            ),
            inputSerialization: inputSerialization.build(),
            outputSerialization: outputSerialization.build(),
            requestProgress: _requestProgress?.build(),
            scanRange: _scanRange?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputSerialization';
        inputSerialization.build();
        _$failedField = 'outputSerialization';
        outputSerialization.build();
        _$failedField = 'requestProgress';
        _requestProgress?.build();
        _$failedField = 'scanRange';
        _scanRange?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SelectObjectContentRequestPayload',
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
