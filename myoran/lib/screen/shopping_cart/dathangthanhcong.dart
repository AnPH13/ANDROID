import 'package:flutter/material.dart';

class DatThanhCong extends StatelessWidget {
  const DatThanhCong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
             children: [
              SizedBox(height: 200,),
              Icon(Icons.check_circle_outline,
                color: Colors.green,size: 130,
              ),
              Text('Đặt hàng thành công',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
              ),
              Spacer(),
                SafeArea(child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 0),
                     child: ElevatedButton(
                      child: Text('Xem lại',style: TextStyle(fontSize: 18,color: Colors.purple)),
                        style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all<Color>(Colors.purple.shade100) ,
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(73,30,73,30)),
                        ),onPressed: (){},),
                      ),
                    ElevatedButton(
                      child: Text('Tiếp tục mua sắm',style: TextStyle(fontSize: 18)),
                        style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all<Color>(Colors.purple.withOpacity(0.8)) ,
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30,30,30,30)),
                        ),onPressed: (){},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}