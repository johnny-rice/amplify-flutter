// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primitive_float_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrimitiveFloatShape> _$primitiveFloatShapeSerializer =
    _$PrimitiveFloatShapeSerializer();

class _$PrimitiveFloatShapeSerializer
    implements StructuredSerializer<PrimitiveFloatShape> {
  @override
  final Iterable<Type> types = const [
    PrimitiveFloatShape,
    _$PrimitiveFloatShape,
  ];
  @override
  final String wireName = 'PrimitiveFloatShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PrimitiveFloatShape object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'traits',
      serializers.serialize(
        object.traits,
        specifiedType: const FullType(TraitMap),
      ),
    ];

    return result;
  }

  @override
  PrimitiveFloatShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrimitiveFloatShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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

class _$PrimitiveFloatShape extends PrimitiveFloatShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$PrimitiveFloatShape([
    void Function(PrimitiveFloatShapeBuilder)? updates,
  ]) => (PrimitiveFloatShapeBuilder()..update(updates))._build();

  _$PrimitiveFloatShape._({required this.shapeId, required this.traits})
    : super._();
  @override
  PrimitiveFloatShape rebuild(
    void Function(PrimitiveFloatShapeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrimitiveFloatShapeBuilder toBuilder() =>
      PrimitiveFloatShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrimitiveFloatShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrimitiveFloatShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class PrimitiveFloatShapeBuilder
    implements
        Builder<PrimitiveFloatShape, PrimitiveFloatShapeBuilder>,
        SimpleShapeBuilder {
  _$PrimitiveFloatShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  PrimitiveFloatShapeBuilder() {
    PrimitiveFloatShape._init(this);
  }

  PrimitiveFloatShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PrimitiveFloatShape other) {
    _$v = other as _$PrimitiveFloatShape;
  }

  @override
  void update(void Function(PrimitiveFloatShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrimitiveFloatShape build() => _build();

  _$PrimitiveFloatShape _build() {
    final _$result =
        _$v ??
        _$PrimitiveFloatShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'PrimitiveFloatShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'PrimitiveFloatShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
