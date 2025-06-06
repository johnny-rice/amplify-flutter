// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'union_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UnionShape> _$unionShapeSerializer = _$UnionShapeSerializer();

class _$UnionShapeSerializer implements StructuredSerializer<UnionShape> {
  @override
  final Iterable<Type> types = const [UnionShape, _$UnionShape];
  @override
  final String wireName = 'UnionShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UnionShape object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'members',
      serializers.serialize(
        object.members,
        specifiedType: const FullType(NamedMembersMap),
      ),
      'traits',
      serializers.serialize(
        object.traits,
        specifiedType: const FullType(TraitMap),
      ),
    ];

    return result;
  }

  @override
  UnionShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnionShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'members':
          result.members =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NamedMembersMap),
                  )!
                  as NamedMembersMap;
          break;
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

class _$UnionShape extends UnionShape {
  @override
  final NamedMembersMap members;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$UnionShape([void Function(UnionShapeBuilder)? updates]) =>
      (UnionShapeBuilder()..update(updates))._build();

  _$UnionShape._({
    required this.members,
    required this.shapeId,
    required this.traits,
  }) : super._();
  @override
  UnionShape rebuild(void Function(UnionShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnionShapeBuilder toBuilder() => UnionShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnionShape &&
        members == other.members &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnionShape')
          ..add('members', members)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class UnionShapeBuilder
    implements
        Builder<UnionShape, UnionShapeBuilder>,
        NamedMembersShapeBuilder {
  _$UnionShape? _$v;

  NamedMembersMap? _members;
  NamedMembersMap? get members => _$this._members;
  set members(covariant NamedMembersMap? members) => _$this._members = members;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  UnionShapeBuilder() {
    UnionShape._init(this);
  }

  UnionShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _members = $v.members;
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UnionShape other) {
    _$v = other as _$UnionShape;
  }

  @override
  void update(void Function(UnionShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnionShape build() => _build();

  _$UnionShape _build() {
    final _$result =
        _$v ??
        _$UnionShape._(
          members: BuiltValueNullFieldError.checkNotNull(
            members,
            r'UnionShape',
            'members',
          ),
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'UnionShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'UnionShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
