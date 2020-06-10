import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'notifications_controller.dart';

class NotificationsPage extends StatefulWidget {
  final String title;
  const NotificationsPage({Key key, this.title = "Notifications"})
      : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState
    extends ModularState<NotificationsPage, NotificationsController> {
  //use 'controller' variable to access controller
  final TextStyle _notificationReady = TextStyle(fontWeight: FontWeight.bold, fontSize: 15);
  final TextStyle _notificationNotReady = TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Helpers().parseColor(colorDefault));
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      hasMenu: false,
      isCenterTitle: false,
      iconActionColor: colorDefault,
      title: 'Notificações',
      widgets: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             
              _notification(false),
              _notification(false),
              _notification(false),
              _notification(true),
              _notification(true),
              _notification(true),
              _notification(true),
              _notification(true),
              _notification(true),
            ],
          ),
        ),
      ),
    );
  }

  _notification(bool ready) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
                height: 10,
              ),
          Text(
            'Novidades! Mais questões para você resolver!',
            style: !ready ? _notificationNotReady : _notificationReady
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Inserimos mais de mil questões.',
            style: TextStyle(color: Colors.grey[500], fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
