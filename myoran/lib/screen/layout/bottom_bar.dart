// import 'package:doan_cake/constraint.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/account/account.dart';
import 'package:myoran/screen/home/home.dart';
// import 'package:flutter_svg/svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    Route route = MaterialPageRoute(builder: (context) => Home());
    Navigator.pop(context);
    if (index.toInt() == 0) {
      route = MaterialPageRoute(builder: (context) => Home());
    } else if (index.toInt() == 1) {
      route = MaterialPageRoute(builder: (context) => Home());
    } else if (index.toInt() == 2) {
      route = MaterialPageRoute(builder: (context) => Home());
    } else if (index.toInt() == 3) {
      route = MaterialPageRoute(builder: (context) => Account());
    }
    Navigator.push(context, route);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex, //New
      onTap: _onItemTapped,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 14,
      selectedFontSize: 14,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      unselectedIconTheme: const IconThemeData(color: Colors.black),
      items: [
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? Icon(Icons.home)
              : Icon(
                  Icons.home,
                  color: Colors.black,
                ),
          label: 'Trang Chủ',
        ),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Icon(Icons.library_add_check_rounded)
                : Icon(
                    Icons.library_add_check_rounded,
                    color: Colors.black,
                  ),
            label: 'Yêu Thích'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Icon(Icons.insert_drive_file_rounded)
                : Icon(
                    Icons.insert_drive_file_rounded,
                    color: Colors.black,
                  ),
            label: 'Đơn Hàng'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Icon(Icons.account_box)
                : Icon(
                    Icons.account_box,
                    color: Colors.black,
                  ),
            label: 'Hồ Sơ'),
      ],
    );
  }
}
