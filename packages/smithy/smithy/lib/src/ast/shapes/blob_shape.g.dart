// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blob_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlobShape> _$blobShapeSerializer = _$BlobShapeSerializer();

class _$BlobShapeSerializer implements StructuredSerializer<BlobShape> {
  @override
  final Iterable<Type> types = const [BlobShape, _$BlobShape];
  @override
  final String wireName = 'BlobShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BlobShape object, {
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
  BlobShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlobShapeBuilder();

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

class _$BlobShape extends BlobShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$BlobShape([void Function(BlobShapeBuilder)? updates]) =>
      (BlobShapeBuilder()..update(updates))._build();

  _$BlobShape._({required this.shapeId, required this.traits}) : super._();
  @override
  BlobShape rebuild(void Function(BlobShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlobShapeBuilder toBuilder() => BlobShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlobShape &&
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
    return (newBuiltValueToStringHelper(r'BlobShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class BlobShapeBuilder
    implements Builder<BlobShape, BlobShapeBuilder>, SimpleShapeBuilder {
  _$BlobShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  BlobShapeBuilder() {
    BlobShape._init(this);
  }

  BlobShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BlobShape other) {
    _$v = other as _$BlobShape;
  }

  @override
  void update(void Function(BlobShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlobShape build() => _build();

  _$BlobShape _build() {
    final _$result =
        _$v ??
        _$BlobShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'BlobShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'BlobShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
