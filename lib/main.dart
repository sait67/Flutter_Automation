import 'dart:io';
import 'package:flutter_automation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(FacebookClone());
}
class FacebookClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFF284881)
    ));

    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Color(0xFF495589)
        ),
        home: LoginPage()
    );
  }
}