import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navBar extends StatefulWidget {
  @override
  navBarState createState() => navBarState();
}

class navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          onPressed: () {},
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
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
