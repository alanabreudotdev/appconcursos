import 'package:eusereiaprovado/app/core/services/local_storage_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'custom_drawer_controller.g.dart';

class CustomDrawerController = _CustomDrawerControllerBase
    with _$CustomDrawerController;

abstract class _CustomDrawerControllerBase with Store {

  @observable
  bool isLoading = false;

  @observable 
  String photo;

  @observable 
  String name;

  @observable 
  String email;

  @action
  getUserInfor() async {
    isLoading = true;
    name = await LocalStorageService.getValue('name');
    email = await LocalStorageService.getValue('email');
    isLoading = false;
  }

  @action
  Future<void> logout() async {
    
    await LocalStorageService.delete('userid');
    await LocalStorageService.delete('photourl');
    await LocalStorageService.delete('name');
    await LocalStorageService.delete('email');
    await LocalStorageService.delete('token');

   Modular.to.pushReplacementNamed("/login");
}
}
