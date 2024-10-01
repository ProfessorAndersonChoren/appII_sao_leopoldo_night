import 'package:agenda_de_contatos/model/contact.dart';
import 'package:mobx/mobx.dart';
part 'contact_store.g.dart';

class ContactsStore = _ContactsStoreBase with _$ContactsStore;

abstract class _ContactsStoreBase with Store {
  @observable
  ObservableList<Contact> _contacts =
      List<Contact>.empty(growable: true).asObservable();

  @computed
  ObservableList<Contact> get contacts => _contacts;

  @action
  void add(Contact contact) {
    _contacts.add(contact);
  }

  @action
  void load(List<Contact> contacts) {
    _contacts.addAll(contacts);
  }
}
