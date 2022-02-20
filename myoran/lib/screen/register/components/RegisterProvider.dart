import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/home/home.dart';
import 'package:myoran/screen/login/login.dart';
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
      print(jsonResponse);
      // sharedPreferences.setString("token", jsonResponse['access_token']);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Home()), (route) => false);
    } else {
      final jsonResponse = json.decode(response.body);
      final err = jsonResponse['error'];
      final email = jsonResponse['email'];
      final password = jsonResponse['password'];
      final name = jsonResponse['name'];
      if (name != null)
        ShowDiaLog1(context, name[0]);
      else if (email != null) {
        ShowDiaLog1(context, email[0]);
      } else if (password != null) {
        ShowDiaLog1(context, password[0]);
      } else {
        ShowDiaLog1(context, err);
      }
    }
  }

  void ShowDiaLog1(BuildContext context, mess) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(
              '${mess}',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Đóng',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          );
        });
  }
}
