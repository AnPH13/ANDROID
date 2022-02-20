
import 'package:flutter/material.dart';

class NhanTin extends StatelessWidget {
  const NhanTin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          title: Text("Hỗ trợ"),
            foregroundColor: Colors.white,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new),color: Colors.white,onPressed: () {
              Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.purple.withOpacity(0.8),
          ),
          body: Column(
            children: [
              Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration:  BoxDecoration(color: Colors.purple.withOpacity(0.8)),
                  child: SafeArea(child: Row(
                    children: [
                      IconButton(icon: Icon(Icons.grid_view),color: Colors.white,onPressed: () {},),
                      SizedBox(width: 10,),
                      Expanded(child: Container(
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.9),borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Expanded(child: TextField(
                                decoration: InputDecoration(
                                hintText: "Nội dung",
                                border: InputBorder.none,
                              ),
                            ),
                           ),
                         ],
                        ),
                       ),
                      ),
                      SizedBox(width: 10,),
                      IconButton(icon: Icon(Icons.send),color: Colors.white,onPressed: () {},),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
