// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'big_decimal_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BigDecimalShape> _$bigDecimalShapeSerializer =
    _$BigDecimalShapeSerializer();

class _$BigDecimalShapeSerializer
    implements StructuredSerializer<BigDecimalShape> {
  @override
  final Iterable<Type> types = const [BigDecimalShape, _$BigDecimalShape];
  @override
  final String wireName = 'BigDecimalShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BigDecimalShape object, {
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
  BigDecimalShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BigDecimalShapeBuilder();

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

class _$BigDecimalShape extends BigDecimalShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$BigDecimalShape([void Function(BigDecimalShapeBuilder)? updates]) =>
      (BigDecimalShapeBuilder()..update(updates))._build();

  _$BigDecimalShape._({required this.shapeId, required this.traits})
    : super._();
  @override
  BigDecimalShape rebuild(void Function(BigDecimalShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BigDecimalShapeBuilder toBuilder() => BigDecimalShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BigDecimalShape &&
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
    return (newBuiltValueToStringHelper(r'BigDecimalShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class BigDecimalShapeBuilder
    implements
        Builder<BigDecimalShape, BigDecimalShapeBuilder>,
        SimpleShapeBuilder {
  _$BigDecimalShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  BigDecimalShapeBuilder() {
    BigDecimalShape._init(this);
  }

  BigDecimalShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BigDecimalShape other) {
    _$v = other as _$BigDecimalShape;
  }

  @override
  void update(void Function(BigDecimalShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BigDecimalShape build() => _build();

  _$BigDecimalShape _build() {
    final _$result =
        _$v ??
        _$BigDecimalShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'BigDecimalShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'BigDecimalShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
