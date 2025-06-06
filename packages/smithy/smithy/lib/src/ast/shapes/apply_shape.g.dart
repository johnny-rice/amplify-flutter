// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplyShape> _$applyShapeSerializer = _$ApplyShapeSerializer();

class _$ApplyShapeSerializer implements StructuredSerializer<ApplyShape> {
  @override
  final Iterable<Type> types = const [ApplyShape, _$ApplyShape];
  @override
  final String wireName = 'ApplyShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ApplyShape object, {
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
  ApplyShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplyShapeBuilder();

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

class _$ApplyShape extends ApplyShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$ApplyShape([void Function(ApplyShapeBuilder)? updates]) =>
      (ApplyShapeBuilder()..update(updates))._build();

  _$ApplyShape._({required this.shapeId, required this.traits}) : super._();
  @override
  ApplyShape rebuild(void Function(ApplyShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplyShapeBuilder toBuilder() => ApplyShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplyShape &&
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
    return (newBuiltValueToStringHelper(r'ApplyShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class ApplyShapeBuilder
    implements Builder<ApplyShape, ApplyShapeBuilder>, ShapeBuilder {
  _$ApplyShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  ApplyShapeBuilder() {
    ApplyShape._init(this);
  }

  ApplyShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ApplyShape other) {
    _$v = other as _$ApplyShape;
  }

  @override
  void update(void Function(ApplyShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplyShape build() => _build();

  _$ApplyShape _build() {
    final _$result =
        _$v ??
        _$ApplyShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'ApplyShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'ApplyShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
