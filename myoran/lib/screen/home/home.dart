import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/model/product.dart';
import 'package:myoran/screen/home/homeProvider.dart';
import 'package:myoran/screen/layout/banner.dart';
import 'package:myoran/screen/layout/product_promo.dart';
import 'package:myoran/screen/layout/bottom_bar.dart';
import 'package:myoran/screen/login/login.dart';
import 'package:myoran/screen/message/message.dart';
import 'package:myoran/screen/message/nhantin.dart';
import 'package:myoran/screen/search/search.dart';
import 'package:myoran/screen/shopping_cart/shopping_cart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late SharedPreferences sharedPreferences;
  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }
  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => Login()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
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
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => NhanTin());
              Navigator.push(context, route);
            },
            icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => Shopping_Cart());
              Navigator.push(context, route);
            },
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
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
              const SizedBox(
                height: 10,
              ),
              banner(),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(237, 237, 237, 0.79)),
                  width: 370,
                  height: 60,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                              onPressed: () {},
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.red),
                              child: const Text('All',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                              child: const Text('Áo sơ mi',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                              child: const Text('Áo thun',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                              child: const Text('quần tây',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                              child: const Text('quần jean',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ProductPromo(text: 'Sản Phẩm Mới'),
              ProductPromo(text: 'Sản Phẩm Nổi Bật'),
              ProductPromo(text: 'Sản Phẩm Bán Chạy'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
