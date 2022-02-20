
import 'package:flutter/material.dart';

void main() {
  runApp(const SuaThongTin());
}

class SuaThongTin extends StatelessWidget {
  const SuaThongTin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Tài khoản cá nhân"),
            foregroundColor: Colors.black,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new),onPressed: () {
               Navigator.pop(context);
            },
          ),
            backgroundColor: Colors.white,
        ),
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('images/login3.png',fit: BoxFit.cover,),
                  ),
                Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Container(
                    child: Padding(
                    padding: const EdgeInsets.only(top: 140),
                      child: Container(
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.8),borderRadius: BorderRadius.circular(16)),
                        child: Container(
                          height: 550,
                          width: 400,
                          color: Colors.white.withOpacity(0.2),
                            child: Column(
                              children: const <Widget>[
                              SizedBox(height: 30),
                              Padding(padding: EdgeInsets.fromLTRB(20,0,20,0),
                                child: TextField(
                                style: TextStyle(fontSize: 16, color: Colors.black),
                                decoration: InputDecoration(
                                labelText: "Nhập Họ Tên",
                                labelStyle: TextStyle(color: Colors.black87),
                                border: OutlineInputBorder(
                                    borderSide: 
                                      BorderSide(color: Color(0xffCED02),width: 1),
                                        borderRadius: BorderRadius.all(Radius.circular(6)),        
                                ),
                              ),
                            ),
                          ),
                              SizedBox(height: 15),
                              Padding(padding: EdgeInsets.fromLTRB(20,0,20,0),
                                child: TextField(
                                style: TextStyle(fontSize: 16, color: Colors.black),
                                decoration: InputDecoration(
                                labelText: "Nhập email",
                                labelStyle: TextStyle(color: Colors.black87),
                                border: OutlineInputBorder(
                                  borderSide: 
                                    BorderSide(color: Color(0xffCED02),width: 1),
                                      borderRadius: BorderRadius.all(Radius.circular(6)),        
                                ),
                              ),
                            ),
                          ),
                              SizedBox(height: 15),
                              Padding(padding: EdgeInsets.fromLTRB(20,0,20,0),
                                child: TextField(
                                  style: TextStyle(fontSize: 16, color: Colors.black),
                                  decoration: InputDecoration(
                                  labelText: "Nhập số điện thoại",
                                  labelStyle: TextStyle(color: Colors.black87),
                                  border: OutlineInputBorder(
                                    borderSide: 
                                      BorderSide(color: Color(0xffCED02),width: 1),
                                        borderRadius: BorderRadius.all(Radius.circular(6)),        
                                ),
                              ),
                            ),
                          ),
                              SizedBox(height: 15),
                              Padding(padding: EdgeInsets.fromLTRB(20,0,20,0),
                                child: TextField(
                                style: TextStyle(fontSize: 16, color: Colors.black),
                                decoration: InputDecoration(
                                labelText: "Ngày sinh",
                                labelStyle: TextStyle(color: Colors.black87),
                                border: OutlineInputBorder(
                                  borderSide: 
                                    BorderSide(color: Color(0xffCED02),width: 1),
                                      borderRadius: BorderRadius.all(Radius.circular(6)),        
                                ),
                              ),
                            ),
                          ),
                              SizedBox(height: 15),
                              Padding(padding: EdgeInsets.fromLTRB(20,0,20,0),
                                child: TextField(
                                style: TextStyle(fontSize: 16, color: Colors.black),
                                decoration: InputDecoration(
                                labelText: "Địa chỉ",
                                labelStyle: TextStyle(color: Colors.black87),
                                border: OutlineInputBorder(
                                  borderSide: 
                                    BorderSide(color: Color(0xffCED02),width: 1),
                                      borderRadius: BorderRadius.all(Radius.circular(6)),        
                                ),
                              ),
                             ),
                            ),   
                          ],   
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 570, 0, 0),
                    child: SizedBox(
                      width: 250,
                      height: 65,
                      child: RaisedButton(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      color: Colors.purple,    
                      onPressed: (){},
                        child: Text("HOÀN THÀNH", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 17)),
                    ),
                  ),
                ),
              ],
           ),
        ),
      ),
    );
  }
}
