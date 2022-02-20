
import 'package:flutter/material.dart';

class BatDau extends StatelessWidget {
  const BatDau({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
              children: [   
                Padding(
                 padding: const EdgeInsets.all(0),
                 child: Image.asset('images/login0.png',height: 1080,width: 1920,fit: BoxFit.cover,),
                ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 580, 0, 0),
                    child: Opacity(opacity: 0.6,
                    child: SizedBox(
                    width: 800,
                    height: 150,
                    child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                ),
              ),
            ),
          ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(210, 602, 0, 0),
                  child: SizedBox(
                  width: 190,
                  height: 60,
                  child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.purple,    
                  onPressed: (){
                    Navigator.pushNamed(
                    context,'/DangKy'
                       );
                     },
                     child: Text("Đăng ký", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(11, 602, 0, 0),
                  child: SizedBox(
                  width: 190,
                  height: 60,
                  child: RaisedButton(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  highlightElevation: 20.0,
                  color: Colors.white, 
                  padding: EdgeInsets.all(0),
                  onPressed: (){
                    Navigator.pushNamed(
                    context,'/DangNhap'
                       );
                      },
                     child: Container( 
                     child: Text("Đăng nhập", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple, fontSize: 20),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
