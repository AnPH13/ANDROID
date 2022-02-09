import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class historyButton extends StatefulWidget {
  @override
  historyButtonState createState() => historyButtonState();
}

class historyButtonState extends State<historyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Áo thun cho nam',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
        ),
      ),
    );
  }
}
