import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class message extends StatefulWidget {
  @override
  messageState createState() => messageState();
}

class messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 233, 233, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(171, 6, 174, 0.8),
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Icon(Icons.radio_button_checked_sharp)),
            SizedBox(
              width: 10,
            ),
            Text('Nhân Viên Hỗ Trợ'),
          ],
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined, color: Colors.white),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
