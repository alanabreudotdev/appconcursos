import 'package:mobx/mobx.dart';

part 'custom_drawer_controller.g.dart';

class CustomDrawerController = _CustomDrawerControllerBase
    with _$CustomDrawerController;

abstract class _CustomDrawerControllerBase with Store {

  @observable 
  bool theme = false;

  bool get themeChanged => theme;

  @action
  void setTheme(value) => theme = value;

  @action
  themeChange(value) {
    print(value);
    setTheme(value);
  }
}
