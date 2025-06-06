// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapShape> _$mapShapeSerializer = _$MapShapeSerializer();

class _$MapShapeSerializer implements StructuredSerializer<MapShape> {
  @override
  final Iterable<Type> types = const [MapShape, _$MapShape];
  @override
  final String wireName = 'MapShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MapShape object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'key',
      serializers.serialize(
        object.key,
        specifiedType: const FullType(ShapeRef),
      ),
      'value',
      serializers.serialize(
        object.value,
        specifiedType: const FullType(ShapeRef),
      ),
      'traits',
      serializers.serialize(
        object.traits,
        specifiedType: const FullType(TraitMap),
      ),
    ];

    return result;
  }

  @override
  MapShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'key':
          result.key.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(ShapeRef),
                )!
                as ShapeRef,
          );
          break;
        case 'value':
          result.value.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(ShapeRef),
                )!
                as ShapeRef,
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
      }
    }

    return result.build();
  }
}

class _$MapShape extends MapShape {
  @override
  final ShapeRef key;
  @override
  final ShapeRef value;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$MapShape([void Function(MapShapeBuilder)? updates]) =>
      (MapShapeBuilder()..update(updates))._build();

  _$MapShape._({
    required this.key,
    required this.value,
    required this.shapeId,
    required this.traits,
  }) : super._();
  @override
  MapShape rebuild(void Function(MapShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapShapeBuilder toBuilder() => MapShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapShape &&
        key == other.key &&
        value == other.value &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapShape')
          ..add('key', key)
          ..add('value', value)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class MapShapeBuilder
    implements Builder<MapShape, MapShapeBuilder>, ShapeBuilder {
  _$MapShape? _$v;

  ShapeRefBuilder? _key;
  ShapeRefBuilder get key => _$this._key ??= ShapeRefBuilder();
  set key(covariant ShapeRefBuilder? key) => _$this._key = key;

  ShapeRefBuilder? _value;
  ShapeRefBuilder get value => _$this._value ??= ShapeRefBuilder();
  set value(covariant ShapeRefBuilder? value) => _$this._value = value;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  MapShapeBuilder() {
    MapShape._init(this);
  }

  MapShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key.toBuilder();
      _value = $v.value.toBuilder();
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MapShape other) {
    _$v = other as _$MapShape;
  }

  @override
  void update(void Function(MapShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapShape build() => _build();

  _$MapShape _build() {
    _$MapShape _$result;
    try {
      _$result =
          _$v ??
          _$MapShape._(
            key: key.build(),
            value: value.build(),
            shapeId: BuiltValueNullFieldError.checkNotNull(
              shapeId,
              r'MapShape',
              'shapeId',
            ),
            traits: BuiltValueNullFieldError.checkNotNull(
              traits,
              r'MapShape',
              'traits',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        key.build();
        _$failedField = 'value';
        value.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MapShape',
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
