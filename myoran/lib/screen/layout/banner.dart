import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class banner extends StatefulWidget {
  @override
  BannerState createState() => BannerState();
}

class BannerState extends State<banner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'images/banner.png',
          width: 370,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
