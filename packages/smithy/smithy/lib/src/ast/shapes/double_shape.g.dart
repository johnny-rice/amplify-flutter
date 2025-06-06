// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'double_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DoubleShape> _$doubleShapeSerializer = _$DoubleShapeSerializer();

class _$DoubleShapeSerializer implements StructuredSerializer<DoubleShape> {
  @override
  final Iterable<Type> types = const [DoubleShape, _$DoubleShape];
  @override
  final String wireName = 'DoubleShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DoubleShape object, {
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
  DoubleShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoubleShapeBuilder();

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

class _$DoubleShape extends DoubleShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$DoubleShape([void Function(DoubleShapeBuilder)? updates]) =>
      (DoubleShapeBuilder()..update(updates))._build();

  _$DoubleShape._({required this.shapeId, required this.traits}) : super._();
  @override
  DoubleShape rebuild(void Function(DoubleShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoubleShapeBuilder toBuilder() => DoubleShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoubleShape &&
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
    return (newBuiltValueToStringHelper(r'DoubleShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class DoubleShapeBuilder
    implements Builder<DoubleShape, DoubleShapeBuilder>, SimpleShapeBuilder {
  _$DoubleShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  DoubleShapeBuilder() {
    DoubleShape._init(this);
  }

  DoubleShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DoubleShape other) {
    _$v = other as _$DoubleShape;
  }

  @override
  void update(void Function(DoubleShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoubleShape build() => _build();

  _$DoubleShape _build() {
    final _$result =
        _$v ??
        _$DoubleShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'DoubleShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'DoubleShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
