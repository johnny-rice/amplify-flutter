// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'byte_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ByteShape> _$byteShapeSerializer = _$ByteShapeSerializer();

class _$ByteShapeSerializer implements StructuredSerializer<ByteShape> {
  @override
  final Iterable<Type> types = const [ByteShape, _$ByteShape];
  @override
  final String wireName = 'ByteShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ByteShape object, {
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
  ByteShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ByteShapeBuilder();

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

class _$ByteShape extends ByteShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$ByteShape([void Function(ByteShapeBuilder)? updates]) =>
      (ByteShapeBuilder()..update(updates))._build();

  _$ByteShape._({required this.shapeId, required this.traits}) : super._();
  @override
  ByteShape rebuild(void Function(ByteShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ByteShapeBuilder toBuilder() => ByteShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ByteShape &&
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
    return (newBuiltValueToStringHelper(r'ByteShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class ByteShapeBuilder
    implements Builder<ByteShape, ByteShapeBuilder>, SimpleShapeBuilder {
  _$ByteShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  ByteShapeBuilder() {
    ByteShape._init(this);
  }

  ByteShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ByteShape other) {
    _$v = other as _$ByteShape;
  }

  @override
  void update(void Function(ByteShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ByteShape build() => _build();

  _$ByteShape _build() {
    final _$result =
        _$v ??
        _$ByteShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'ByteShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'ByteShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
