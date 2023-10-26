import 'package:flutter/material.dart';
import 'package:shoppingapp/home.dart';
import 'package:shoppingapp/product_data.dart';
class Sports extends StatelessWidget {

  Sports({super.key});
  final List<ProductDetails> temp = [
    ProductDetails(image: 'fasjfas', name: 'product 1', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 2', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 3', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 4', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 5', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 6', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 7', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 8', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 9', price: '₹150'),
    ProductDetails(image: 'fasjfas', name: 'product 10', price: '₹150'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHome()),
              );
            }, icon: Icon(Icons.arrow_back,color: Colors.black)),
            pinned: true,
            expandedHeight: 300.0,
            // collapsedHeight: 100.0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
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
              child: FlexibleSpaceBar(
                centerTitle: true,
                background: Image(image: AssetImage('assets/sports1.png'),),
                title: Text('Sports',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      letterSpacing: 2.0,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed
                  ),
                ),
                expandedTitleScale: 1.5,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400.0,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.yellowAccent,
                            width: 0.5
                        ),
                      ),
                      elevation: 5.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded (child: Column(
                            children: [
                              Text(temp[index].name),
                              Text(temp[index].price),

                            ],
                          )
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 5.0),
                            child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                          Icons.monetization_on
                                      ),
                                      label: Text('Buy Now',style: TextStyle(fontSize: 12),),
                                      style: ElevatedButton.styleFrom(
                                          elevation: 5,
                                          backgroundColor: Colors.greenAccent,
                                          foregroundColor: Colors.black// Background color
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_cart),
                                      label: Text('Add to Cart',style: TextStyle(fontSize: 12)),
                                      style: ElevatedButton.styleFrom(
                                          elevation: 5,
                                          backgroundColor: Colors.lightBlue[100],
                                          foregroundColor: Colors.black// Background color
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child:ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                          Icons.star_border
                                      ),
                                      label: Text('Wishlist',style: TextStyle(fontSize: 12),),
                                      style: ElevatedButton.styleFrom(
                                          elevation: 5,
                                          backgroundColor: Colors.yellow,
                                          foregroundColor: Colors.black// Background color
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    );
              },
              childCount: temp.length,
            ),
          ),

        ],
      ),
    );
  }
}