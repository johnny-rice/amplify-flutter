// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primitive_boolean_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrimitiveBooleanShape> _$primitiveBooleanShapeSerializer =
    _$PrimitiveBooleanShapeSerializer();

class _$PrimitiveBooleanShapeSerializer
    implements StructuredSerializer<PrimitiveBooleanShape> {
  @override
  final Iterable<Type> types = const [
    PrimitiveBooleanShape,
    _$PrimitiveBooleanShape,
  ];
  @override
  final String wireName = 'PrimitiveBooleanShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PrimitiveBooleanShape object, {
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
  PrimitiveBooleanShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrimitiveBooleanShapeBuilder();

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

class _$PrimitiveBooleanShape extends PrimitiveBooleanShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$PrimitiveBooleanShape([
    void Function(PrimitiveBooleanShapeBuilder)? updates,
  ]) => (PrimitiveBooleanShapeBuilder()..update(updates))._build();

  _$PrimitiveBooleanShape._({required this.shapeId, required this.traits})
    : super._();
  @override
  PrimitiveBooleanShape rebuild(
    void Function(PrimitiveBooleanShapeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrimitiveBooleanShapeBuilder toBuilder() =>
      PrimitiveBooleanShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrimitiveBooleanShape &&
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
    return (newBuiltValueToStringHelper(r'PrimitiveBooleanShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class PrimitiveBooleanShapeBuilder
    implements
        Builder<PrimitiveBooleanShape, PrimitiveBooleanShapeBuilder>,
        SimpleShapeBuilder {
  _$PrimitiveBooleanShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  PrimitiveBooleanShapeBuilder() {
    PrimitiveBooleanShape._init(this);
  }

  PrimitiveBooleanShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PrimitiveBooleanShape other) {
    _$v = other as _$PrimitiveBooleanShape;
  }

  @override
  void update(void Function(PrimitiveBooleanShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrimitiveBooleanShape build() => _build();

  _$PrimitiveBooleanShape _build() {
    final _$result =
        _$v ??
        _$PrimitiveBooleanShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'PrimitiveBooleanShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'PrimitiveBooleanShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
