import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
 

 @observable
 String name="";

 @observable 
 String email = "";

 @observable
 String password;

 @observable
 String passwordConfirmation;

 @computed
 bool get isNameValid => name.length > 3;

@computed
  bool get isEmailValid =>
      RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
          .hasMatch(email);

 @computed
 bool get isPasswordValid => password.length >= 6;

@computed
 bool get passConfirmationIsValid => passwordConfirmation.length >= 6;

 @computed
 bool get passConfirmed => password == passwordConfirmation;

 @computed
 Function get isPressed => (isNameValid && isEmailValid &&  isPasswordValid && passConfirmationIsValid && passConfirmed) ? signUp : null;

 @action
 void setName(String value) => name = value;

 @action
 void setEmail(String value) => email = value;

 @action
 void setPass(String value) => password = value;

 @action
 void setPassConfirmation(String value) => passwordConfirmation = value;


 @action
 Future<bool> signUp(){

  

 }

}
