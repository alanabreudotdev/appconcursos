import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../helpers.dart';

class CustomScaffoldWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String iconActionColor;
  final String title;
  final bool hasMenu;
  final Widget widgets;
  final Widget customDrawer;
  final List<Widget> actionsButtons;

  const CustomScaffoldWidget(
      {Key key,
      this.hasMenu = false,
      this.scaffoldKey,
      @required this.iconActionColor,
      @required this.title,
      @required this.widgets,
      this.customDrawer,
      this.actionsButtons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          actions: actionsButtons,
          leading: IconButton(
              icon: hasMenu ? Icon(Icons.sort) : Icon(Icons.arrow_back),
              onPressed: () => hasMenu ? scaffoldKey.currentState.openDrawer() : Modular.to.pop(),
              color: Helpers().parseColor(iconActionColor)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(color: Helpers().parseColor(iconActionColor)),
          ),
        ),
        extendBody: true,
        extendBodyBehindAppBar: false,
        body: widgets,
        drawer: customDrawer,
      ),
    );
  }
  
}
