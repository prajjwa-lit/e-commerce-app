import 'package:flutter/material.dart';
import 'package:shoppingapp/home.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const MyHome()),
          );
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(2.0, 1.0, 10.0, 0.0),
          child: Text('Orders',
              style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
              )
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient:LinearGradient(
                begin: Alignment(-1,-1),
                end: Alignment(1,1),
                colors: <Color>[
                  Color(0xff0cebeb),
                  Color(0xff20e3b2),
                  Color(0xff29ffc6),
                  //Color(0xff02AABD),
                  //Color(0xff00CDAC),
                ],
              )
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
