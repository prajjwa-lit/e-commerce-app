import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppingapp/home.dart';
import 'package:shoppingapp/splashscreen.dart';

void main ()
{

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
    return runApp(MaterialApp(
      theme: ThemeData(primaryIconTheme: IconThemeData(color: Colors.black)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashscreen',
      routes:
      {

        '/splashscreen' : (context) => const SplashScreen(),

      },
    ));
}
