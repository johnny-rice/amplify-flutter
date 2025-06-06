// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MemberShape> _$memberShapeSerializer = _$MemberShapeSerializer();

class _$MemberShapeSerializer implements StructuredSerializer<MemberShape> {
  @override
  final Iterable<Type> types = const [MemberShape, _$MemberShape];
  @override
  final String wireName = 'MemberShape';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MemberShape object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'target',
      serializers.serialize(
        object.target,
        specifiedType: const FullType(ShapeId),
      ),
      'memberName',
      serializers.serialize(
        object.memberName,
        specifiedType: const FullType(String),
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
  MemberShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemberShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'target':
          result.target =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ShapeId),
                  )!
                  as ShapeId;
          break;
        case 'memberName':
          result.memberName =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
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

class _$MemberShape extends MemberShape {
  @override
  final ShapeId target;
  @override
  final String memberName;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$MemberShape([void Function(MemberShapeBuilder)? updates]) =>
      (MemberShapeBuilder()..update(updates))._build();

  _$MemberShape._({
    required this.target,
    required this.memberName,
    required this.shapeId,
    required this.traits,
  }) : super._();
  @override
  MemberShape rebuild(void Function(MemberShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemberShapeBuilder toBuilder() => MemberShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemberShape &&
        target == other.target &&
        memberName == other.memberName &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, memberName.hashCode);
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MemberShape')
          ..add('target', target)
          ..add('memberName', memberName)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class MemberShapeBuilder
    implements Builder<MemberShape, MemberShapeBuilder>, ShapeBuilder {
  _$MemberShape? _$v;

  ShapeId? _target;
  ShapeId? get target => _$this._target;
  set target(covariant ShapeId? target) => _$this._target = target;

  String? _memberName;
  String? get memberName => _$this._memberName;
  set memberName(covariant String? memberName) =>
      _$this._memberName = memberName;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  MemberShapeBuilder() {
    MemberShape._init(this);
  }

  MemberShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _target = $v.target;
      _memberName = $v.memberName;
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MemberShape other) {
    _$v = other as _$MemberShape;
  }

  @override
  void update(void Function(MemberShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemberShape build() => _build();

  _$MemberShape _build() {
    final _$result =
        _$v ??
        _$MemberShape._(
          target: BuiltValueNullFieldError.checkNotNull(
            target,
            r'MemberShape',
            'target',
          ),
          memberName: BuiltValueNullFieldError.checkNotNull(
            memberName,
            r'MemberShape',
            'memberName',
          ),
          shapeId: BuiltValueNullFieldError.checkNotNull(
            shapeId,
            r'MemberShape',
            'shapeId',
          ),
          traits: BuiltValueNullFieldError.checkNotNull(
            traits,
            r'MemberShape',
            'traits',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
