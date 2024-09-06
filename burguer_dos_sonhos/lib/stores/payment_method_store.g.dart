// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PaymentMethodStore on PaymentMethodStoreBase, Store {
  Computed<Payment>? _$selectedComputed;

  @override
  Payment get selected =>
      (_$selectedComputed ??= Computed<Payment>(() => super.selected,
              name: 'PaymentMethodStoreBase.selected'))
          .value;

  late final _$_selectedAtom =
      Atom(name: 'PaymentMethodStoreBase._selected', context: context);

  @override
  Payment get _selected {
    _$_selectedAtom.reportRead();
    return super._selected;
  }

  @override
  set _selected(Payment value) {
    _$_selectedAtom.reportWrite(value, super._selected, () {
      super._selected = value;
    });
  }

  late final _$PaymentMethodStoreBaseActionController =
      ActionController(name: 'PaymentMethodStoreBase', context: context);

  @override
  void changePaymentMethod(Payment value) {
    final _$actionInfo = _$PaymentMethodStoreBaseActionController.startAction(
        name: 'PaymentMethodStoreBase.changePaymentMethod');
    try {
      return super.changePaymentMethod(value);
    } finally {
      _$PaymentMethodStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected}
    ''';
  }
}
