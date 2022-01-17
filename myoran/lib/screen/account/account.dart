import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/layout/bottom_bar.dart';
import 'package:myoran/screen/layout/history_button.dart';
import 'package:myoran/screen/search/search.dart';
import 'package:myoran/screen/shopping_cart/shopping_cart.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'images/anph.jpg',
                  width: 370,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Hoàng An',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Container(
                width: double.maxFinite,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Tài khoản của tôi',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Container(
                width: double.maxFinite,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Lịch sử mua sắm',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Container(
                width: double.maxFinite,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Trung tâm trợ giúp',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Container(
                width: double.maxFinite,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Cài đặt',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Container(
                width: double.maxFinite,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Đăng xuất',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
