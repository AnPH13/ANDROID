import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myoran/screen/login/components/LoginProvider.dart';

class FormInput extends StatefulWidget {
  const FormInput({Key? key}) : super(key: key);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  bool hidePassword = true;
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pascontroller = TextEditingController();

  LoginProvider _auth = new LoginProvider();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: TextFormField(
              controller: _emailcontroller,
              cursorColor: Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
              style: TextStyle(
                color: Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
              ),
              keyboardType: TextInputType.emailAddress,
              // onSaved: () ,
              // validator: (input) => !input!.contains("@") ? "Email sai" : null,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                  ),
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                ),
                fillColor: Colors.white.withOpacity(0.8),
                filled: true,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: TextFormField(
              controller: _pascontroller,
              obscureText: hidePassword,
              cursorColor: Color.fromRGBO(171, 6, 174, 0.8),
              style: TextStyle(
                color: Color.fromRGBO(171, 6, 174, 0.8),
              ),
              keyboardType: TextInputType.text,
              // onSaved:,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(171, 6, 174, 0.8),
                  ),
                ),
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                  color: Theme.of(context).accentColor.withOpacity(0.4),
                  icon: Icon(
                      hidePassword ? Icons.visibility_off : Icons.visibility),
                ),
                labelStyle: TextStyle(
                  color: Color.fromRGBO(171, 6, 174, 0.8),
                ),
                fillColor: Colors.white.withOpacity(0.8),
                filled: true,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(171, 6, 174, 0.8),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: double.maxFinite,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  if (_emailcontroller.text == "" ||
                      _pascontroller.text == "") {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Text(
                              'Chưa nhập email hoặc mật khẩu',
                            ),
                          );
                        });
                  } else {
                    _auth.signIn(
                        context, _emailcontroller.text, _pascontroller.text);
                  }
                },
                child: Text('LOGIN'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(171, 6, 174, 0.8),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
