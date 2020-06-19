import 'package:eusereiaprovado/app/core/models/user_model.dart';
import 'package:eusereiaprovado/app/core/repositories/api_repository.dart';
import 'package:eusereiaprovado/app/core/services/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {

_AuthControllerBase(this._repo);

@observable
String email = "";

@observable
String password = "";

final ApiRepository _repo;
UserModel user;

@observable
bool isLoading = false;

@action
void setEmail(value) => email= value;

@action
void setPass(value) => password = value;

@computed
  bool get isEmailValid =>
      RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
          .hasMatch(email);

@computed
  bool get isPasswordValid => password.length >= 6;

@computed
bool get formIsValid => isEmailValid && isPasswordValid;

 
//LOGIN METHOD
//PARAMS: email, password
@action
Future<bool> login() async{ 

  isLoading = true;

  var dados = {
      'email' : email,
      'password' : password
  };

  var ret = await _repo.post(dados, '/api/auth/login');

  if(ret != null){
    user =  UserModel.fromJson(ret);
  
    await LocalStorageService.setValue<String>('userid', user.user.id.toString());
    await LocalStorageService.setValue<String>('photourl', user.user.photourl);
    await LocalStorageService.setValue<String>('name', user.user.name);
    await LocalStorageService.setValue<String>('email', user.user.email);
    await LocalStorageService.setValue<String>('token', user.accessToken);

    isLoading = false;

    return true;

  }else{
    isLoading = false;
    return false;
  }
 
    
}


}
