import 'package:burguer_dos_sonhos/enums/payment.dart';
import 'package:mobx/mobx.dart';

part 'payment_method_store.g.dart';

class PaymentMethodStore = PaymentMethodStoreBase with _$PaymentMethodStore;

abstract class PaymentMethodStoreBase with Store {
  @observable
  Payment _selected = Payment.creditCard;

  @computed
  Payment get selected => _selected;

  @action
  void changePaymentMethod(Payment value) {
    _selected = value;
  }
}
