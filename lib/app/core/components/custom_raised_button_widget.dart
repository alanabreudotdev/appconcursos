import 'package:flutter/material.dart';

 class CustomRaisedButtonWidget extends StatelessWidget {
  
  final Color accentColor;
  final Function action;
  final String btnName;
  final double verticalSize;

  CustomRaisedButtonWidget({ @required this.btnName, this.accentColor, this.action, this.verticalSize = 14});
  
  @override

Widget build(BuildContext context) {  return FittedBox(
  child: RawMaterialButton(
  fillColor: accentColor,
  splashColor: Colors.black12,
  elevation: 8.0,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
  child: Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: verticalSize),
    child: Center(child: Text(btnName, style: TextStyle(fontSize: 18.0, color: Colors.white))),
  ),
  onPressed: action
  ),
 );
}
}