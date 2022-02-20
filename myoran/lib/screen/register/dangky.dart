
import 'package:flutter/material.dart';

class DangKy extends StatelessWidget {
  const DangKy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('images/bg_1.png',fit: BoxFit.cover,),
                ),
                Positioned(
                  top: 80,
                  child: IconButton(icon: Icon(Icons.arrow_back_ios_new),onPressed: () {
                    Navigator.pop(context);
                      },
                    ),
                  ),
                Positioned(
                  left: 130,
                  top: 82,
                  child: Text('Đăng Ký',
                    style: TextStyle(fontSize: 40, color: Colors.black,fontWeight: FontWeight.w500,fontFamily: 'Roboto'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top:61),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                          children:  <Widget>[
                          SizedBox(height: 100),
                          Container(
                            decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),borderRadius: BorderRadius.circular(6)
                            ),
                            child: TextField(
                              style: TextStyle(fontSize: 16, color: Colors.black),
                              decoration: InputDecoration(
                              labelText: "Họ và Tên",
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6)),        
                              ),
                            ),
                          ),
                        ),   
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),borderRadius: BorderRadius.circular(6)
                          ),
                        child:TextField(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: 
                              BorderSide(color: Color(0xffCED02),width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(6)),        
                          ),
                        ),
                          keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),borderRadius: BorderRadius.circular(6)
                        ),
                        child:TextField(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          decoration: InputDecoration(
                          labelText: "Số điện thoại",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: 
                              BorderSide(color: Color(0xffCED02),width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(6)),        
                          ),
                        ),
                          keyboardType: TextInputType.number,
                      ),
                    ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),borderRadius: BorderRadius.circular(6)
                        ),
                        child:TextField(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          decoration: InputDecoration(
                          labelText: "Mật khẩu",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: 
                              BorderSide(color: Color(0xffCED02),width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(6)),        
                          ),
                        ),
                          obscureText: true,
                      ),
                    ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),borderRadius: BorderRadius.circular(6)
                        ),
                        child:TextField(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          decoration: InputDecoration(
                          labelText: "Xác nhận mật khẩu",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: 
                              BorderSide(color: Color(0xffCED02),width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(6)),        
                          ),
                        ),
                          obscureText: true,
                     ),
                   ),                   
                      TextButton(
                        child: Text('Trở về đăng nhập',style: TextStyle(fontWeight: FontWeight.w900,)),onPressed: (){
                          Navigator.pushNamed(
                          context,'/DangNhap');
                        }
                      ),
                    ],   
                  ),
                ),
              ),
            ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(80, 580, 0, 0),
                      child: SizedBox(
                        width: 250,
                        height: 65,
                      child: RaisedButton(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        color: Colors.purple,    
                        onPressed: (){},
                          child: Text("ĐĂNG KÝ", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 17)),
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
