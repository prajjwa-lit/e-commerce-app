import 'package:flutter/material.dart';
import 'package:shoppingapp/home.dart';
class Furniture extends StatelessWidget {
  const Furniture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(2.0, 1.0, 10.0, 15.0),
          child: IconButton(onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyHome()),
            );
          }, icon: Icon(Icons.arrow_back))
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(2.0, 1.0, 10.0, 15.0),
          child: Text('Gian\'s Online Store',
              style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600
              )
          ),
        ),

      ),
    );
  }
}
