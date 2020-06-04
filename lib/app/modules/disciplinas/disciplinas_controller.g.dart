// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disciplinas_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DisciplinasController on _DisciplinasControllerBase, Store {
  final _$valueAtom = Atom(name: '_DisciplinasControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_DisciplinasControllerBaseActionController =
      ActionController(name: '_DisciplinasControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_DisciplinasControllerBaseActionController
        .startAction(name: '_DisciplinasControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_DisciplinasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
