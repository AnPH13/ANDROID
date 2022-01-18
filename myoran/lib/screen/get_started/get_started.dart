import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/login/login.dart';
import 'package:myoran/screen/register/register.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/lisas.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Image.asset(
      //           "images/icon.png",
      //           width: 200,
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.white.withOpacity(0.7),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Login());
                      Navigator.push(context, route);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(
                          color: Color.fromRGBO(171, 6, 174, 0.9), width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Container(
                      width: 100,
                      height: 45,
                      alignment: Alignment.center,
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(171, 6, 174, 0.9)),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Register());
                    Navigator.push(context, route);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(171, 6, 174, 0.9),
                    side: const BorderSide(
                        color: Color.fromRGBO(171, 6, 174, 0.9), width: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Container(
                    width: 100,
                    height: 45,
                    alignment: Alignment.center,
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    ]));
  }
}
