// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoriteStore on FavoriteStoreBase, Store {
  late final _$_isFavoriteAtom =
      Atom(name: 'FavoriteStoreBase._isFavorite', context: context);

  @override
  bool get _isFavorite {
    _$_isFavoriteAtom.reportRead();
    return super._isFavorite;
  }

  @override
  set _isFavorite(bool value) {
    _$_isFavoriteAtom.reportWrite(value, super._isFavorite, () {
      super._isFavorite = value;
    });
  }

  late final _$FavoriteStoreBaseActionController =
      ActionController(name: 'FavoriteStoreBase', context: context);

  @override
  void changeState(bool state) {
    final _$actionInfo = _$FavoriteStoreBaseActionController.startAction(
        name: 'FavoriteStoreBase.changeState');
    try {
      return super.changeState(state);
    } finally {
      _$FavoriteStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
