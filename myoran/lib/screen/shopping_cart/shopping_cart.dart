import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/layout/banner.dart';
import 'package:myoran/screen/layout/product_promo.dart';
import 'package:myoran/screen/layout/bottom_bar.dart';
import 'package:myoran/screen/layout/product_horizontal.dart';
import 'package:myoran/screen/search/search.dart';

class Shopping_Cart extends StatefulWidget {
  const Shopping_Cart({Key? key}) : super(key: key);

  @override
  State<Shopping_Cart> createState() => _Shopping_CartState();
}

class _Shopping_CartState extends State<Shopping_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 233, 233, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'images/icon.png',
          width: 150,
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => Search());
              Navigator.push(context, route);
            },
            icon: Icon(Icons.search, color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Center(
                    child: Text(
                      '11/11/2021',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              product_horizontal(),
              SizedBox(
                height: 5,
              ),
              product_horizontal(),
              SizedBox(
                height: 5,
              ),
              product_horizontal(),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Center(
                    child: Text(
                      '12/01/2021',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              product_horizontal(),
              SizedBox(
                height: 5,
              ),
              product_horizontal(),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
