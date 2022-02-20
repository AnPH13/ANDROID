
import 'package:flutter/material.dart';


class QuenMatKhau extends StatelessWidget {
  const QuenMatKhau({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(0),
                  child: Image.asset('images/login2.png',fit: BoxFit.cover,),
              ),
              Positioned(
                top: 80,
                  child: IconButton(icon: Icon(Icons.arrow_back_ios_new),onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.8),borderRadius: BorderRadius.circular(16)),
                      child: Container(
                        height: 400,
                        width: 400,
                        color: Colors.white.withOpacity(0.2),
                      child: Column(
                        children: const <Widget>[
                          SizedBox(height: 30),
                          Text('Quên mật khẩu',
                            style: TextStyle(fontSize: 35, color: Colors.black,fontWeight: FontWeight.w500,fontFamily: 'Comfortaa'),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.fromLTRB(100,0,100,0),
                            child: Text('Nhập email để nhận mã xác nhận lấy lại mật khẩu',
                              style: TextStyle(fontSize: 15, color: Colors.black87,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                          ),
                          SizedBox(height: 40),
                          Padding(padding: EdgeInsets.fromLTRB(20,0,20,0),
                            child:TextField(
                              style: TextStyle(fontSize: 18, color: Colors.black),
                              decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.black),
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
              padding: const EdgeInsets.fromLTRB(80, 460, 0, 0),
              child: SizedBox(
                width: 250,
                height: 65,
                child: RaisedButton(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                  color: Colors.purple,    
                  onPressed: (){
                    Navigator.pushNamed(
                    context,'/OTP'
                    );
                  },
                  child: Text("XÁC NHẬN", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 17)),
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
