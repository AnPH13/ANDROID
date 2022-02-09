import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product_horizontal extends StatefulWidget {
  @override
  product_horizontalState createState() => product_horizontalState();
}

class product_horizontalState extends State<product_horizontal> {
  int _count = 1;
  bool check = false;
  void _onItemTapped(bool math) {
    setState(() {
      if (math == true) {
        _count++;
      } else if (_count > 0) {
        _count--;
      }
    });
  }

  void _check() {
    setState(() {
      check = check ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              'images/ao_nu1.png',
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Text(
                  'Áo mới',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '69.000 đ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(171, 6, 174, 0.8),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Row(
              children: [
                TextButton(
                  onPressed: () => _onItemTapped(false),
                  child: Container(
                    padding: EdgeInsets.zero,
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(171, 6, 174, 0.8),
                    ),
                    child: Icon(
                      Icons.arrow_circle_down,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  _count.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () => _onItemTapped(true),
                  child: Container(
                    padding: EdgeInsets.zero,
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(171, 6, 174, 0.8),
                    ),
                    child: Icon(
                      Icons.arrow_circle_up,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => _check(),
            icon: check
                ? Icon(
                    Icons.check_box,
                    //  Icons.check_box,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    //  Icons.check_box,
                    color: Colors.red,
                  ),
          ),
        ],
      ),
    );
  }
}
