import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/home/home.dart';
import 'package:myoran/screen/register/register.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class RegisterProvider {
  Future<void> Resgister(
      BuildContext context, String name, String email, String password) async {
    String url = 'http://10.0.2.2:8000/api/register';

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {'name': name, 'email': email, 'password': password};
    var response = await http.post(Uri.parse(url),
        headers: <String, String>{'Accept': 'application/json'}, body: body);
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print('response status:${response.statusCode}');
      print('response status:${response.body}');
      sharedPreferences.setString("token", jsonResponse['access_token']);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Home()), (route) => false);
    } else {
      print('adsadadada');
    }
  }
}
