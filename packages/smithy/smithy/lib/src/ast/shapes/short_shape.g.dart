// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShortShape> _$shortShapeSerializer = _$ShortShapeSerializer();

class _$ShortShapeSerializer implements StructuredSerializer<ShortShape> {
  @override
  final Iterable<Type> types = const [ShortShape, _$ShortShape];
  @override
  final String wireName = 'ShortShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ShortShape object, {
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
  ShortShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShortShapeBuilder();

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

class _$ShortShape extends ShortShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$ShortShape([void Function(ShortShapeBuilder)? updates]) =>
      (ShortShapeBuilder()..update(updates))._build();

  _$ShortShape._({required this.shapeId, required this.traits}) : super._();
  @override
  ShortShape rebuild(void Function(ShortShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortShapeBuilder toBuilder() => ShortShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortShape &&
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
    return (newBuiltValueToStringHelper(r'ShortShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class ShortShapeBuilder
    implements Builder<ShortShape, ShortShapeBuilder>, SimpleShapeBuilder {
  _$ShortShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  ShortShapeBuilder() {
    ShortShape._init(this);
  }

  ShortShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ShortShape other) {
    _$v = other as _$ShortShape;
  }

  @override
  void update(void Function(ShortShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShortShape build() => _build();

  _$ShortShape _build() {
    final _$result =
        _$v ??
        _$ShortShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'ShortShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'ShortShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
