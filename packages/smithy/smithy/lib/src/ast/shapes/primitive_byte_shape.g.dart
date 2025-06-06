// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primitive_byte_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrimitiveByteShape> _$primitiveByteShapeSerializer =
    _$PrimitiveByteShapeSerializer();

class _$PrimitiveByteShapeSerializer
    implements StructuredSerializer<PrimitiveByteShape> {
  @override
  final Iterable<Type> types = const [PrimitiveByteShape, _$PrimitiveByteShape];
  @override
  final String wireName = 'PrimitiveByteShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PrimitiveByteShape object, {
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
  PrimitiveByteShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrimitiveByteShapeBuilder();

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

class _$PrimitiveByteShape extends PrimitiveByteShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$PrimitiveByteShape([
    void Function(PrimitiveByteShapeBuilder)? updates,
  ]) => (PrimitiveByteShapeBuilder()..update(updates))._build();

  _$PrimitiveByteShape._({required this.shapeId, required this.traits})
    : super._();
  @override
  PrimitiveByteShape rebuild(
    void Function(PrimitiveByteShapeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrimitiveByteShapeBuilder toBuilder() =>
      PrimitiveByteShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrimitiveByteShape &&
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
    return (newBuiltValueToStringHelper(r'PrimitiveByteShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class PrimitiveByteShapeBuilder
    implements
        Builder<PrimitiveByteShape, PrimitiveByteShapeBuilder>,
        SimpleShapeBuilder {
  _$PrimitiveByteShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  PrimitiveByteShapeBuilder() {
    PrimitiveByteShape._init(this);
  }

  PrimitiveByteShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PrimitiveByteShape other) {
    _$v = other as _$PrimitiveByteShape;
  }

  @override
  void update(void Function(PrimitiveByteShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrimitiveByteShape build() => _build();

  _$PrimitiveByteShape _build() {
    final _$result =
        _$v ??
        _$PrimitiveByteShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'PrimitiveByteShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'PrimitiveByteShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
