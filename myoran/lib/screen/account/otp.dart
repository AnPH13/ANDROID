
import 'package:flutter/material.dart';


class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
          appBar: AppBar(
            title: Text("Xác Thực Mã OTP"),
            foregroundColor: Colors.white,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new),color: Colors.white,onPressed: () {
              Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.purple.withOpacity(0.8),
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SafeArea(
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Text('Xác Thực Mã OTP',style: TextStyle(fontSize: 35, color: Colors.black,fontWeight: FontWeight.w500)),
                        SizedBox(height: 30,),
                        Text('Chúng tôi đã gửi mã OTP tới locpha***@gmail.com',style: TextStyle(fontSize: 15, color: Colors.black54)),
                        SizedBox(height: 10,),
                        Text('Vui lòng nhập mã OTP để tiếp tục',style: TextStyle(fontSize: 15, color: Colors.black54)),
                          //TweenAnimationBuilder(
                            //tween: Tween(begin: 30.0,end: 0),
                            //duration: Duration(seconds: 30),
                            //builder: (context,value,child)=>Text(
                              //"00:${value.toString()}",
                              //style: TextStyle(color: Colors.amber),
                            //),
                          //),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            SizedBox(
                              width: 60,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 24),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.black )
                            ),
                          ),
                        ),
                      ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 60,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 24),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.black )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 60,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 24),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.black )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 60,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 24),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.black )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 60,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 24),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.black )
                                  ),
                                ),
                              ),
                            ),                     
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(color: Colors.white.withOpacity(0.8),borderRadius: BorderRadius.circular(40)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50,),
                        SizedBox(
                          width: 250,
                          height: 65,
                          child: RaisedButton(
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                            color: Colors.purple,    
                            onPressed: (){},
                              child: Text("TIẾP TỤC", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 17)),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton( child: Text('Gửi lại mã OTP',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black54)),onPressed: (){},
                        ),
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