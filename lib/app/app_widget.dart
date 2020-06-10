import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: appName,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.grey[100],
          textTheme: GoogleFonts.ubuntuTextTheme(
            Theme.of(context).textTheme
          )
          ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
