// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_drawer_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomDrawerController on _CustomDrawerControllerBase, Store {
  final _$themeAtom = Atom(name: '_CustomDrawerControllerBase.theme');

  @override
  bool get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(bool value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$_CustomDrawerControllerBaseActionController =
      ActionController(name: '_CustomDrawerControllerBase');

  @override
  void setTheme(dynamic value) {
    final _$actionInfo = _$_CustomDrawerControllerBaseActionController
        .startAction(name: '_CustomDrawerControllerBase.setTheme');
    try {
      return super.setTheme(value);
    } finally {
      _$_CustomDrawerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic themeChange(dynamic value) {
    final _$actionInfo = _$_CustomDrawerControllerBaseActionController
        .startAction(name: '_CustomDrawerControllerBase.themeChange');
    try {
      return super.themeChange(value);
    } finally {
      _$_CustomDrawerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme}
    ''';
  }
}
