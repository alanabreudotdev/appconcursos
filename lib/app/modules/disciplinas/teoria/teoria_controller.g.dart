// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teoria_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TeoriaController on _TeoriaControllerBase, Store {
  final _$webcontrollerAtom = Atom(name: '_TeoriaControllerBase.webcontroller');

  @override
  WebViewController get webcontroller {
    _$webcontrollerAtom.reportRead();
    return super.webcontroller;
  }

  @override
  set webcontroller(WebViewController value) {
    _$webcontrollerAtom.reportWrite(value, super.webcontroller, () {
      super.webcontroller = value;
    });
  }

  final _$fileTextAtom = Atom(name: '_TeoriaControllerBase.fileText');

  @override
  String get fileText {
    _$fileTextAtom.reportRead();
    return super.fileText;
  }

  @override
  set fileText(String value) {
    _$fileTextAtom.reportWrite(value, super.fileText, () {
      super.fileText = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_TeoriaControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$loadHtmlFromAssetsAsyncAction =
      AsyncAction('_TeoriaControllerBase.loadHtmlFromAssets');

  @override
  Future loadHtmlFromAssets(String file) {
    return _$loadHtmlFromAssetsAsyncAction
        .run(() => super.loadHtmlFromAssets(file));
  }

  final _$_TeoriaControllerBaseActionController =
      ActionController(name: '_TeoriaControllerBase');

  @override
  void setLoading(dynamic value) {
    final _$actionInfo = _$_TeoriaControllerBaseActionController.startAction(
        name: '_TeoriaControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_TeoriaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFileText(dynamic value) {
    final _$actionInfo = _$_TeoriaControllerBaseActionController.startAction(
        name: '_TeoriaControllerBase.setFileText');
    try {
      return super.setFileText(value);
    } finally {
      _$_TeoriaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
webcontroller: ${webcontroller},
fileText: ${fileText},
isLoading: ${isLoading}
    ''';
  }
}
