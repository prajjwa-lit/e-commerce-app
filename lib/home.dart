import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shoppingapp/furniture.dart';
import 'package:shoppingapp/electronics.dart';
import 'package:shoppingapp/sports.dart';
import 'package:shoppingapp/fashion.dart';
import 'package:shoppingapp/kitchen.dart';
import 'package:shoppingapp/userpages/mycart.dart';
import 'package:shoppingapp/userpages/orders.dart';
import 'package:shoppingapp/userpages/wishlist.dart';
import 'package:url_launcher/url_launcher.dart';
class  MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.fromLTRB(2.0, 1.0, 10.0, 15.0),
            child: Icon(Icons.home,
            color: Colors.black,),
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
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(2.0, 1.0, 10.0, 15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                      Icons.more_vert
                  ),
                )
            ),
          ],
          actionsIconTheme: const IconThemeData(
              size: 30.0,
              color: Colors.black,
              opacity: 10.0
          ),
          bottom:  PreferredSize(
            preferredSize:  const Size.fromHeight(100.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 5.0, 10.0, 5.0),
                  child: SizedBox(
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        icon: const Icon(Icons.search,
                          color: Colors.black,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: 'What are we looking for?',
                        hintStyle: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                        )
                      )
                    ),
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12,width: 2),
                          color: Colors.white54,
                          borderRadius: const BorderRadius.all(Radius.circular(40)),
                        ) ,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Electronics()),
                            );
                          },
                          child: const Image(height:50,width:50,image: AssetImage('assets/electronics1.png')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ) ,
                        child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Furniture()),
                              );
                            },
                            child: const Image(height:50,width:50,image: AssetImage('assets/furniture1.png')),
                          ),
                      ),
                      ),
                    Expanded(
                      child: Container(
                        decoration:const BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ) ,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sports()),
                            );
                          },
                          child: const Image(height:50,width:50,image: AssetImage('assets/sports1.png')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration:const BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ) ,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Kitchen()),
                            );
                          },
                          child: const Image(height:50,width:50,image: AssetImage('assets/kitchen1.png')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ) ,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fashion()),
                            );
                          },
                          child: const Image(height:50,width:40,image: AssetImage('assets/fashion1.png')),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: ListView(
            children:
            [
              CarouselSlider(
                items: [

                  //1st Image of Slider
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Electronics()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/samsung.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Furniture()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/furniturebanner.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Sports()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/sportsbanner.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Fashion()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/clothingbanner.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Kitchen()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/kitchenbanner1.jpg'),
                          fit: BoxFit.fill,
                        ),
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
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  viewportFraction: 0.8,
                ),
              ),
              const HomePageCards(text1: "Electronics",img1: 'assets/electronics1.png',
                text2: "Furniture",img2: 'assets/furniture1.png',
                text3: 'Most wished for',img3: 'assets/sports1.png',
                text4: 'blockbuster deals',img4: 'assets/fashion1.png',
                text5: 'Kitchen',img5: 'assets/kitchen1.png',
                text6: 'yoooooo',),

            ]
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          decoration:  BoxDecoration(
              gradient:LinearGradient(
                begin: Alignment(-1, -1),
                end: Alignment(1,1),
                colors: <Color>[
                  Color(0xff0cebeb),
                  Color(0xff20e3b2),
                  Color(0xff29ffc6),
                ],
              )
          ),
          child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0.0,
            height: 55.0,
            child: Row( //children inside bottom appbar
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child:IconButton(icon: Icon(Icons.login, color: Colors.black,), onPressed: ()
                {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        scrollable: true,
                        title: const Text("Login"),
                        content: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "Name",
                                    icon: Icon(Icons.account_box),
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "Email",
                                    icon: Icon(Icons.email),
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "Phone Number",
                                    icon: Icon(Icons.phone),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration:  BoxDecoration(
                                  gradient:LinearGradient(
                                   // begin: Alignment(-1, -1),
                                    //end: Alignment(1,1),
                                    colors: <Color>[
                                      Color(0xff0cebeb),
                                      Color(0xff20e3b2),
                                      Color(0xff29ffc6),
                                    ],
                                  ),
                                  border: Border.all(color: Colors.white54,width:2.0),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5.0)
                                ),
                              ),
                              child: ElevatedButton(
                                child: const Text("submit",
                                style: TextStyle(
                                  color: Colors.black87
                                ),),
                                onPressed: () {
                                  // your code
                                },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                  },)),
                Expanded(child:IconButton(icon: Icon(Icons.delivery_dining, color: Colors.black,),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Orders()),
                    );
                    },)),
                Expanded(child:IconButton(icon: Icon(Icons.shopping_cart, color: Colors.black,),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Mycart()),
                    );
                  },)),
                Expanded(child:IconButton(icon: Icon(Icons.star, color: Colors.black,),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Wishlist()),
                    );
                  },)),
              ],
            ),
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class HomePageCards extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  const HomePageCards({super.key,required this.text1,required this.img1,required this.text2,required this.img2,required this.text3,required this.img3,
                                required this.text4,required this.img4,required this.text5,required this.img5,required this.text6});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Electronics()),
                    );
                  },
                  child: Container(height: 90,width:180,

                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(image: AssetImage(img1)),
                      gradient: const LinearGradient(
                        transform: GradientRotation(3.0),
                    colors: <Color>[
                      Color(0xfff9cdc3),
                      Color(0xfffacefb),
                    ],
                  )),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text1),
                  ),),
                ),
              ),
              Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Furniture()),
                      );
                    },
                    child: Container(height: 120,width:180,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(fit:BoxFit.contain ,image: AssetImage(img2)),
                        gradient: const LinearGradient(
                          begin: Alignment(-1, -1),
                          end: Alignment(1, 1),
                          colors: <Color>[
                            Colors.greenAccent,
                            Colors.tealAccent,
                          ],
                        )
                    ),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text2),
                    ),),
                  )
              ),
            Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Fashion()),
                    );
                  },
                  child: Container(height: 240,width:180,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment(-1, -1),
                          end: Alignment(1, 1),
                          colors: <Color>[
                            Color(0xff200122),
                            Color(0xff6f0000),
                          ],
                        )
                    ),
                    child: Stack(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(text4,
                              style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  letterSpacing: 1.5,
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.dashed
                              ) ),
                        ),
                        Positioned(
                          top: 20.0,
                          child: const Image(height:220,width:200,image: AssetImage('assets/fashion3.png')),
                        ),
                        Positioned(
                          top: 85.0,
                          child:const Image(height:150,width:190,image: AssetImage('assets/megasale.png')),
                        ),

                      ],
                    ),

                  ),
                )),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Kitchen()),
                  );
                },
                child: Container(height: 190,width:180,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(image: AssetImage(img5)),
                      gradient: const LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(1, 1),
                        colors: <Color>[
                          Colors.greenAccent,
                          Colors.white,
                        ],
                      )),child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text5),
                ),),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sports()),
                    );
                  },
                  child: Container(height: 220,width:180,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment(-1, -1),
                          end: Alignment(1, 1),
                          colors: <Color>[
                            Colors.orange,
                            Colors.yellowAccent,
                          ],
                        )
                    ),
                    child: Stack(

                    children:
                    [
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(text3),
                         ),
                        Positioned(
                          top: 20.0,
                                child: const Image(height:120,width:180,image: AssetImage('assets/sports1.png')),
                              ),
                            Positioned(
                              top: 70.0,
                              child: const Image(height:170,width:180,image: AssetImage('assets/backinstock.png')),
                            ),

                            ],
                            ),

            ),
                )
            ),
            Card(
                child: InkWell(
                  child: Container(height: 435,width:180,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment(-1, -1),
                          end: Alignment(1, 1),
                          colors: <Color>[
                            Color(0xffE5E6E4),
                            Color(0xffF2F3F2),
                            Color(0xffFFFFFF),
                           // Colors
                          ],
                        )
                    ),
                    child: Stack(

                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Brands We Love',

                            style:TextStyle(
                              fontSize: 17,
                              letterSpacing: 2.0,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40.0,
                          child: InkWell(
                            onTap: () => launchUrl(Uri.parse('https://www.nike.com/in/')),
                            child: const Image(width: 170,image: AssetImage('assets/nikelogo1.png')),
                          ),
                        ),
                        Positioned(
                          top: 130.0,
                          child: InkWell(
                            onTap: () => launchUrl(Uri.parse('https://www.asics.com/in/en-in')),
                            child: const Image(width:175,image: AssetImage('assets/asicslogo.png')),
                          ),
                        ),
                        Positioned(
                          top: 235.0,
                          child:InkWell(
                            onTap: () => launchUrl(Uri.parse('https://www.newbalance.com/')),
                            child: const Image(width:180,image: AssetImage('assets/nblogo.png')),
                          ),
                        ),
                        Positioned(
                          top: 335.0,
                          child: InkWell(
                            onTap: () => launchUrl(Uri.parse('https://www.converse.in/')),
                            child: const Image(height: 100,width:180,image: AssetImage('assets/converselogo.png')),
                          ),
                        ),
                      ],
                    ),

                  ),
                )),
          ],
        ),

      ],
    );
  }
}

