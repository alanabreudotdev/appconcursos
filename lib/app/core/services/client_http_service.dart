import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClientHttpService extends Disposable {

  final Dio client;

  ClientHttpService(this.client);

  Future<Map<String, dynamic>> get(String path) async {
    var response = await client.get(path);

    return response.data;
  }

  Future post(String path, dados) async {

    var response = await client.post(path, data: dados);
     
    return response.data;
  }
  //dispose will be called automatically
  @override
  void dispose() {}
}
