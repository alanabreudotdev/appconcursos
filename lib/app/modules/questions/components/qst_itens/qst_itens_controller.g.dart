// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qst_itens_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QstItensController on _QstItensControllerBase, Store {
  final _$selectedRadioAtom =
      Atom(name: '_QstItensControllerBase.selectedRadio');

  @override
  String get selectedRadio {
    _$selectedRadioAtom.reportRead();
    return super.selectedRadio;
  }

  @override
  set selectedRadio(String value) {
    _$selectedRadioAtom.reportWrite(value, super.selectedRadio, () {
      super.selectedRadio = value;
    });
  }

  final _$_QstItensControllerBaseActionController =
      ActionController(name: '_QstItensControllerBase');

  @override
  void setSelectedRadio(dynamic value) {
    final _$actionInfo = _$_QstItensControllerBaseActionController.startAction(
        name: '_QstItensControllerBase.setSelectedRadio');
    try {
      return super.setSelectedRadio(value);
    } finally {
      _$_QstItensControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedRadio: ${selectedRadio}
    ''';
  }
}
