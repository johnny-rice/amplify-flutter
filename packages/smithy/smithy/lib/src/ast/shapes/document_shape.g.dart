// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentShape> _$documentShapeSerializer =
    _$DocumentShapeSerializer();

class _$DocumentShapeSerializer implements StructuredSerializer<DocumentShape> {
  @override
  final Iterable<Type> types = const [DocumentShape, _$DocumentShape];
  @override
  final String wireName = 'DocumentShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DocumentShape object, {
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
  DocumentShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentShapeBuilder();

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

class _$DocumentShape extends DocumentShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$DocumentShape([void Function(DocumentShapeBuilder)? updates]) =>
      (DocumentShapeBuilder()..update(updates))._build();

  _$DocumentShape._({required this.shapeId, required this.traits}) : super._();
  @override
  DocumentShape rebuild(void Function(DocumentShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentShapeBuilder toBuilder() => DocumentShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentShape &&
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
    return (newBuiltValueToStringHelper(r'DocumentShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class DocumentShapeBuilder
    implements
        Builder<DocumentShape, DocumentShapeBuilder>,
        SimpleShapeBuilder {
  _$DocumentShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  DocumentShapeBuilder() {
    DocumentShape._init(this);
  }

  DocumentShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DocumentShape other) {
    _$v = other as _$DocumentShape;
  }

  @override
  void update(void Function(DocumentShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentShape build() => _build();

  _$DocumentShape _build() {
    final _$result =
        _$v ??
        _$DocumentShape._(
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'DocumentShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'DocumentShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
