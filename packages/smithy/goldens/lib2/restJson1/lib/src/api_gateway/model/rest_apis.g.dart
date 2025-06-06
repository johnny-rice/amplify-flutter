// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_apis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestApis extends RestApis {
  @override
  final _i2.BuiltList<RestApi>? items;
  @override
  final String? position;

  factory _$RestApis([void Function(RestApisBuilder)? updates]) =>
      (RestApisBuilder()..update(updates))._build();

  _$RestApis._({this.items, this.position}) : super._();
  @override
  RestApis rebuild(void Function(RestApisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestApisBuilder toBuilder() => RestApisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestApis &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestApisBuilder implements Builder<RestApis, RestApisBuilder> {
  _$RestApis? _$v;

  _i2.ListBuilder<RestApi>? _items;
  _i2.ListBuilder<RestApi> get items =>
      _$this._items ??= _i2.ListBuilder<RestApi>();
  set items(_i2.ListBuilder<RestApi>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  RestApisBuilder();

  RestApisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestApis other) {
    _$v = other as _$RestApis;
  }

  @override
  void update(void Function(RestApisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestApis build() => _build();

  _$RestApis _build() {
    _$RestApis _$result;
    try {
      _$result =
          _$v ?? _$RestApis._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RestApis',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
