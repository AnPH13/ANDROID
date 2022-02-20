import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String baseUrl = "http://10.0.2.2:8000";
const String productUrl = baseUrl + "/api/product";
const String loginUrl = baseUrl + "/api/login";

Future<String?> getToken() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString("token");
}
