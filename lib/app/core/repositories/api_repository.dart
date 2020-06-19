import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/services/client_http_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

class ApiRepository extends Disposable {
  final ClientHttpService client;

  ApiRepository(this.client);

  Future post(dados, String path) async {
    var json = await client.post(URL + path, dados);
    print(json);
    if (json['success'] == true) {
      return json;
    } else {
      asuka.showSnackBar(SnackBar(content: Text(json['message'])));
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
