import 'package:flutter/material.dart';
import 'package:myoran/screen/account/account.dart';
import 'package:myoran/screen/account/quen_mat_khau.dart';
import 'package:myoran/screen/get_started.dart/get_started.dart';
import 'package:myoran/screen/home/home.dart';

import 'package:myoran/screen/login/login.dart';
import 'package:myoran/screen/login/login1.dart';
import 'package:myoran/screen/product_detail/product_detail.dart';
import 'package:myoran/screen/product_detail/product_detail1.dart';
import 'package:myoran/screen/register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetStarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}
