import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/layout/bottom_bar.dart';
import 'package:myoran/screen/layout/history_button.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: TextFormField(
              // obscureText: true,
              // cursorColor: Colors.black,
              style: const TextStyle(
                color: Colors.black,
              ),
              keyboardType: TextInputType.text,
              //controller: firstNumber,
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                fillColor: Colors.white.withOpacity(1),
                filled: true,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment(0, 0),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Lịch sử tìm kiếm',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          historyButton(),
          historyButton(),
          historyButton(),
          historyButton(),
          historyButton(),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
