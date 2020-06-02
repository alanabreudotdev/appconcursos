import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final controller;
  final inputColor;
  final String labelText;
  final String hintText;
  final Icon icon;
  final Function(String) validated;
  final bool isObscure;
  final Function(String) onChange;
  final bool isEnable;
  final bool hasSuffix;
  final Widget suffixAction;
  final TextInputType keyboardType;
  final String valorInicial;

  const CustomTextWidget({Key key, this.controller, this.inputColor,  this.hintText, this.icon, this.validated, this.isObscure = false, this.onChange, this.isEnable =  true, this.labelText, this.hasSuffix = false,  this.suffixAction, this.keyboardType, this.valorInicial}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    TextStyle _hintStyle = TextStyle(color: Colors.grey[500], fontSize: 15);

    return Container(
        decoration: BoxDecoration(
          //color: Colors.grey[200],
          //shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(32),
        ),
        
        child: TextFormField(
            controller: controller,
            onChanged: onChange,
            enabled: isEnable,
            initialValue: valorInicial,
            obscureText: isObscure,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                hintText: hintText, 
                labelStyle: _hintStyle,
                labelText: labelText,
                //border: InputBorder.none, 
                prefixIcon: icon,
                suffix: hasSuffix ? suffixAction : null),
            validator: validated));
  }
}
