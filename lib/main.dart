import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppingapp/home.dart';

void main ()
{

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
    return runApp(MaterialApp(
      initialRoute: '/home',
      routes:
      {

        '/home' : (context) => const MyHome(),

      },
    ));
}
