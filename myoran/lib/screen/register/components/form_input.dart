import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myoran/screen/register/components/RegisterProvider.dart';

class FormInput extends StatefulWidget {
  const FormInput({Key? key}) : super(key: key);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  bool hidePassword = true;
  bool hidePassword1 = true;
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pascontroller = TextEditingController();
  final TextEditingController _pascontroller1 = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();

  RegisterProvider _auth = new RegisterProvider();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: TextField(
                      controller: _namecontroller,
                      textInputAction: TextInputAction.next,
                      cursorColor:
                          Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                      style: TextStyle(
                        color: Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                      ),
                      keyboardType: TextInputType.text,
                      //controller: firstNumber,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                          ),
                        ),
                        labelText: 'Full name',
                        labelStyle: TextStyle(
                          color:
                              Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                        ),
                        fillColor: Colors.white.withOpacity(0.8),
                        filled: true,
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: TextField(
                      controller: _emailcontroller,
                      cursorColor:
                          Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                      style: TextStyle(
                        color: Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      //controller: firstNumber,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                          ),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color:
                              Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
                        ),
                        fillColor: Colors.white.withOpacity(0.8),
                        filled: true,
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                Color.fromRGBO(171, 6, 174, 0.8).withOpacity(1),
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
                      obscureText: hidePassword1,
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
                              hidePassword1 = !hidePassword1;
                            });
                          },
                          color: Theme.of(context).accentColor.withOpacity(0.4),
                          icon: Icon(hidePassword1
                              ? Icons.visibility_off
                              : Icons.visibility),
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
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: TextFormField(
                      controller: _pascontroller1,
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
                        labelText: 'Confirm Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          color: Theme.of(context).accentColor.withOpacity(0.4),
                          icon: Icon(hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
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
                          if (_pascontroller.text != _pascontroller1.text) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Text(
                                      'passwword không trùng khớp',
                                    ),
                                  );
                                });
                          } else {
                            _auth.Resgister(context, _namecontroller.text,
                                _emailcontroller.text, _pascontroller.text);
                          }
                        },
                        child: Text('REGISTER'),
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
            ),
          ],
        ),
      ),
    );
  }
}
