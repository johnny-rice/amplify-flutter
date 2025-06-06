// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_player_action_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostPlayerActionInput extends PostPlayerActionInput {
  @override
  final PlayerAction? action;

  factory _$PostPlayerActionInput([
    void Function(PostPlayerActionInputBuilder)? updates,
  ]) => (PostPlayerActionInputBuilder()..update(updates))._build();

  _$PostPlayerActionInput._({this.action}) : super._();
  @override
  PostPlayerActionInput rebuild(
    void Function(PostPlayerActionInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PostPlayerActionInputBuilder toBuilder() =>
      PostPlayerActionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostPlayerActionInput && action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PostPlayerActionInputBuilder
    implements Builder<PostPlayerActionInput, PostPlayerActionInputBuilder> {
  _$PostPlayerActionInput? _$v;

  PlayerAction? _action;
  PlayerAction? get action => _$this._action;
  set action(PlayerAction? action) => _$this._action = action;

  PostPlayerActionInputBuilder();

  PostPlayerActionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostPlayerActionInput other) {
    _$v = other as _$PostPlayerActionInput;
  }

  @override
  void update(void Function(PostPlayerActionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostPlayerActionInput build() => _build();

  _$PostPlayerActionInput _build() {
    final _$result = _$v ?? _$PostPlayerActionInput._(action: action);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
