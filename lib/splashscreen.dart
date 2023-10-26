import 'package:flutter/material.dart';
import 'package:shoppingapp/home.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:LinearGradient(
           // begin: Alignment(-1,-1),
            //end: Alignment(1,1),
            colors: <Color>[
              Color(0xff0cebeb),
              Color(0xff20e3b2),
              Color(0xff29ffc6),
            ],
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('WonderCart',
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.w900,
                color: Colors.white
              ),
              ),
              SizedBox(height: 40),
              SleekCircularSlider(
                appearance: CircularSliderAppearance(
                    customColors: CustomSliderColors(
                  progressBarColors: [
                    Colors.white70,
                    Colors.white
                  ],
                  trackColor: Colors.white,
                  dotColor: Colors.white,
                )),
                initialValue: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
