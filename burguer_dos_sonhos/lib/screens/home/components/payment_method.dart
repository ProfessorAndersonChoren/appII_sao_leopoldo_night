import 'package:burguer_dos_sonhos/enums/payment.dart';
import 'package:burguer_dos_sonhos/stores/payment_method_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PaymentMethod extends StatelessWidget {
  final _store = PaymentMethodStore();
  PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: [
          RadioListTile<Payment>(
            groupValue: _store.selected,
            value: Payment.creditCard,
            onChanged: (value) {
              _store.changePaymentMethod(value!);
            },
            title: const Text('Cartão de crédito'),
          ),
          RadioListTile<Payment>(
            groupValue: _store.selected,
            value: Payment.debitCard,
            onChanged: (value) {
              _store.changePaymentMethod(value!);
            },
            title: const Text('Cartão de débito'),
          ),
          RadioListTile<Payment>(
            groupValue: _store.selected,
            value: Payment.pix,
            onChanged: (value) {
              _store.changePaymentMethod(value!);
            },
            title: const Text('Pix'),
          ),
        ],
      );
    });
  }
}
