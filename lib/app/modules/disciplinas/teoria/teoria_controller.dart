import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'teoria_controller.g.dart';

class TeoriaController = _TeoriaControllerBase with _$TeoriaController;

abstract class _TeoriaControllerBase with Store {

@observable
WebViewController webcontroller;

@observable
String fileText = "";

@observable
bool isLoading = false;

@action
void setLoading(value) => isLoading = value;
@action
void setFileText(value) => fileText = value;

  @action
  loadHtmlFromAssets(String file) async {
    
    setFileText(await rootBundle.loadString(file)); 
    webcontroller.loadUrl( Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
   
  }
}
