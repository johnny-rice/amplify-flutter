// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceShape> _$serviceShapeSerializer = _$ServiceShapeSerializer();

class _$ServiceShapeSerializer implements StructuredSerializer<ServiceShape> {
  @override
  final Iterable<Type> types = const [ServiceShape, _$ServiceShape];
  @override
  final String wireName = 'ServiceShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServiceShape object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'rename',
      serializers.serialize(
        object.rename,
        specifiedType: const FullType(BuiltMap, const [
          const FullType(String),
          const FullType(String),
        ]),
      ),
      'errors',
      serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltSet, const [
          const FullType(ShapeRef),
        ]),
      ),
      'traits',
      serializers.serialize(
        object.traits,
        specifiedType: const FullType(TraitMap),
      ),
      'resources',
      serializers.serialize(
        object.resources,
        specifiedType: const FullType(BuiltSet, const [
          const FullType(ShapeRef),
        ]),
      ),
      'operations',
      serializers.serialize(
        object.operations,
        specifiedType: const FullType(BuiltSet, const [
          const FullType(ShapeRef),
        ]),
      ),
    ];
    Object? value;
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  ServiceShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'version':
          result.version =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'rename':
          result.rename.replace(
            serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String),
              ]),
            )!,
          );
          break;
        case 'errors':
          result.errors.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltSet, const [
                    const FullType(ShapeRef),
                  ]),
                )!
                as BuiltSet<Object?>,
          );
          break;
        case 'traits':
          result.traits =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TraitMap),
                  )!
                  as TraitMap;
          break;
        case 'resources':
          result.resources.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltSet, const [
                    const FullType(ShapeRef),
                  ]),
                )!
                as BuiltSet<Object?>,
          );
          break;
        case 'operations':
          result.operations.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltSet, const [
                    const FullType(ShapeRef),
                  ]),
                )!
                as BuiltSet<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$ServiceShape extends ServiceShape {
  @override
  final String? version;
  @override
  final BuiltMap<String, String> rename;
  @override
  final BuiltSet<ShapeRef> errors;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;
  @override
  final BuiltSet<ShapeRef> resources;
  @override
  final BuiltSet<ShapeRef> operations;

  factory _$ServiceShape([void Function(ServiceShapeBuilder)? updates]) =>
      (ServiceShapeBuilder()..update(updates))._build();

  _$ServiceShape._({
    this.version,
    required this.rename,
    required this.errors,
    required this.shapeId,
    required this.traits,
    required this.resources,
    required this.operations,
  }) : super._();
  @override
  ServiceShape rebuild(void Function(ServiceShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceShapeBuilder toBuilder() => ServiceShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceShape &&
        version == other.version &&
        rename == other.rename &&
        errors == other.errors &&
        shapeId == other.shapeId &&
        traits == other.traits &&
        resources == other.resources &&
        operations == other.operations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, rename.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jc(_$hash, operations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceShape')
          ..add('version', version)
          ..add('rename', rename)
          ..add('errors', errors)
          ..add('shapeId', shapeId)
          ..add('traits', traits)
          ..add('resources', resources)
          ..add('operations', operations))
        .toString();
  }
}

class ServiceShapeBuilder
    implements Builder<ServiceShape, ServiceShapeBuilder>, ShapeBuilder {
  _$ServiceShape? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(covariant String? version) => _$this._version = version;

  MapBuilder<String, String>? _rename;
  MapBuilder<String, String> get rename =>
      _$this._rename ??= MapBuilder<String, String>();
  set rename(covariant MapBuilder<String, String>? rename) =>
      _$this._rename = rename;

  SetBuilder<ShapeRef>? _errors;
  SetBuilder<ShapeRef> get errors => _$this._errors ??= SetBuilder<ShapeRef>();
  set errors(covariant SetBuilder<ShapeRef>? errors) => _$this._errors = errors;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  SetBuilder<ShapeRef>? _resources;
  SetBuilder<ShapeRef> get resources =>
      _$this._resources ??= SetBuilder<ShapeRef>();
  set resources(covariant SetBuilder<ShapeRef>? resources) =>
      _$this._resources = resources;

  SetBuilder<ShapeRef>? _operations;
  SetBuilder<ShapeRef> get operations =>
      _$this._operations ??= SetBuilder<ShapeRef>();
  set operations(covariant SetBuilder<ShapeRef>? operations) =>
      _$this._operations = operations;

  ServiceShapeBuilder() {
    ServiceShape._init(this);
  }

  ServiceShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _rename = $v.rename.toBuilder();
      _errors = $v.errors.toBuilder();
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _resources = $v.resources.toBuilder();
      _operations = $v.operations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ServiceShape other) {
    _$v = other as _$ServiceShape;
  }

  @override
  void update(void Function(ServiceShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceShape build() => _build();

  _$ServiceShape _build() {
    _$ServiceShape _$result;
    try {
      _$result =
          _$v ??
          _$ServiceShape._(
            version: version,
            rename: rename.build(),
            errors: errors.build(),
            shapeId: BuiltValueNullFieldError.checkNotNull(
              shapeId,
              r'ServiceShape',
              'shapeId',
            ),
            traits: BuiltValueNullFieldError.checkNotNull(
              traits,
              r'ServiceShape',
              'traits',
            ),
            resources: resources.build(),
            operations: operations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rename';
        rename.build();
        _$failedField = 'errors';
        errors.build();

        _$failedField = 'resources';
        resources.build();
        _$failedField = 'operations';
        operations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ServiceShape',
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
