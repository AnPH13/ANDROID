import 'package:flutter/material.dart';
import 'package:myoran/screen/account/account.dart';
import 'package:myoran/screen/account/chinhsuattcanhan.dart';
import 'package:myoran/screen/account/otp.dart';
import 'package:myoran/screen/account/quenmatkhau.dart';
import 'package:myoran/screen/get_started.dart/get_started.dart';
import 'package:myoran/screen/get_started/batdau.dart';
import 'package:myoran/screen/home/home.dart';
import 'package:myoran/screen/login/dangnhap.dart';

import 'package:myoran/screen/login/login.dart';
import 'package:myoran/screen/message/nhantin.dart';
import 'package:myoran/screen/product_detail/product_detail.dart';
import 'package:myoran/screen/product_detail/product_detail1.dart';
import 'package:myoran/screen/register/dangky.dart';
import 'package:myoran/screen/register/register.dart';
import 'package:myoran/screen/shopping_cart/dathangthanhcong.dart';


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
       initialRoute: '/',
      routes: {
        '/':(context)=>const BatDau(),
        '/DangNhap':(context)=>const DangNhap(),
        '/DangKy':(context)=>const DangKy(),
        '/QuenMatKhau':(context)=>const QuenMatKhau(),
        '/OTP':(context)=>const OTP(),
        '/DatHangThanhCong':(context)=>const DatThanhCong(),
        '/ChinhSuaThongTin':(context)=>const SuaThongTin(),
        '/NhanTin':(context)=>const NhanTin(),

      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
