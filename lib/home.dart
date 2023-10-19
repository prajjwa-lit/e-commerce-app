import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
                    Icons.search,
                    size: 26.0,
                  ),
                )
            ),
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
                  // TabBar(
                  //   tabs:
                  //   [
                  //     Tab(child: IconButton(onPressed: () {}, icon: Icon(Icons.phone_android)),),
                  //     Tab(child: IconButton(onPressed: () {}, icon: Icon(Icons.bed))),
                  //     Tab(child: IconButton(onPressed: () {}, icon: Icon(Icons.local_grocery_store))),
                  //     Tab(child: IconButton(onPressed: () {}, icon: Icon(Icons.sports_basketball))),
                  //     Tab(child: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_rounded))),
                  // ]),
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
                          onTap: () {},
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
                            onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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
                            text5: 'Kitchen',img5: 'assets/kitchen1.png',),

          ]
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
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
          child: BottomNavigationBar(
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.black,
            currentIndex: 1,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store,color: Colors.brown,),
                label: 'Cart',
              ),
               BottomNavigationBarItem(
                 icon: Icon(Icons.star,color: Colors.brown,),
                 label: 'Wishlist',
               ),
              BottomNavigationBarItem(

                icon: Icon(Icons.home,color: Colors.green,),
                label: 'Homepage',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.login_sharp,color: Colors.brown,),
                label: 'Login',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining,color: Colors.brown,),
                label: 'Orders',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class customcards extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  const customcards({super.key,required this.text1,required this.img1,required this.text2,required this.img2,required this.text3,required this.img3,
                                required this.text4,required this.img4,required this.text5,required this.img5,});

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
            Card(
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
                ),)
            ),
            Column(
              children: [
                Card(
                    child: Container(height: 220,width:180,
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
                            top: 10.0,
                            child: InkWell(
                              onTap: () {},
                              child: const Image(height:220,width:200,image: AssetImage('assets/fashion3.png')),
                            ),
                          ),
                          Positioned(
                            top: 70.0,
                            child:InkWell(
                              onTap: () {},
                              child: const Image(height:150,width:190,image: AssetImage('assets/megasale.png')),
                            ),
                          ),

                        ],
                      ),

                    )),
                Card(
                  child: Container(height: 180,width:180,

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
              ],
            ),
          ],
        ),
        Column(
          children: [
            Card(
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

                  children: [
                            Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(text3),
                                   ),
                      Positioned(
                        top: 20.0,
                              child: InkWell(
                              onTap: () {},
                               child: const Image(height:120,width:180,image: AssetImage('assets/sports1.png')),
                         ),
                            ),
                          Positioned(
                            top: 70.0,
                            child: InkWell(
                              onTap: () {},
                              child: const Image(height:170,width:180,image: AssetImage('assets/backinstock.png')),
                            ),
                          ),

                          ],
                          ),

            )
            ),
            Card(
                child: Container(height: 405,width:180,
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
                        child: Text(' Brands we love!!',
                          style:TextStyle(
                            fontSize: 17,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed
                          ) ,),
                      ),
                      Positioned(
                        top: 30.0,
                        child: InkWell(
                          onTap: () {},
                          child: const Image(width: 170,image: AssetImage('assets/adidaslogo.png')),
                        ),
                      ),
                      Positioned(
                        top: 140.0,
                        child: InkWell(
                          onTap: () {},
                          child: const Image(width:180,image: AssetImage('assets/nikelogo.png')),
                        ),
                      ),
                      Positioned(
                        top: 220.0,
                        child:InkWell(
                          onTap: () {},
                          child: const Image(width:180,image: AssetImage('assets/nblogo.png')),
                        ),
                      ),
                      Positioned(
                        top: 310.0,
                        child: InkWell(
                          onTap: () {},
                          child: const Image(height: 100,width:180,image: AssetImage('assets/converselogo.png')),
                        ),
                      ),
                    ],
                  ),

                )),
          ],
        ),

      ],
    );
  }
}

