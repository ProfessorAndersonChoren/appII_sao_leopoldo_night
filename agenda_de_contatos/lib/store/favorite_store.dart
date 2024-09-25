import 'package:mobx/mobx.dart';

part 'favorite_store.g.dart';

class FavoriteStore = FavoriteStoreBase with _$FavoriteStore;

abstract class FavoriteStoreBase with Store {
  @observable
  bool _isFavorite = false;

  bool get isFavorite => _isFavorite;

  @action
  void changeState(bool state) {
    _isFavorite = state;
  }
}
