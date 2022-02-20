
import 'package:flutter/material.dart';

class DangNhap extends StatelessWidget {
  const DangNhap({Key? key}) : super(key: key);

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
                left: 110,
                top: 82,
                child: Text('Đăng Nhập',
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
                          SizedBox(height: 260),
                          Container(
                            decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),borderRadius: BorderRadius.circular(6)
                            ),
                            child: TextField(
                              style: TextStyle(fontSize: 16, color: Colors.black),
                              decoration: InputDecoration(
                                labelText: "Email",
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
                              labelText: "Mật Khẩu",
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
                          height: 10,
                        ),
                        TextButton(
                          child: Text('Quên mật khẩu?',style: TextStyle(fontWeight: FontWeight.w900,)),onPressed: (){
                            Navigator.pushNamed(
                            context,'/QuenMatKhau'
                            );
                          },
                        ),
                      ],   
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 530, 0, 0),
                child: SizedBox(
                  width: 250,
                  height: 65,
                    child: RaisedButton(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      color: Colors.purple,    
                      onPressed: (){},
                        child: Text("ĐĂNG NHẬP", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 17)),
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
