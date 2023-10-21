import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home.dart';
class name1 extends StatelessWidget {
  const name1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children:
        [
          CarouselSlider(
            items: [

              //1st Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/electronics2.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/furniture2.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/sale2.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/fashion2.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/megasale.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          const customcards(text1: "Electronics",img1: 'assets/electronics1.png',
            text2: "Furniture",img2: 'assets/furniture1.png',
            text3: 'Most wished for',img3: 'assets/sports1.png',
            text4: 'blockbuster deals',img4: 'assets/fashion1.png',
            text5: 'Kitchen',img5: 'assets/kitchen1.png',
            text6: 'yoooooo',),

        ]
    );
  }
}
