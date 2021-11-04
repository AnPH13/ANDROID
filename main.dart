import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
Widget titleSection = Container(
  padding: const EdgeInsets.all(30),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              "Oeschinen Lake Campground",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Kandersteg, Switzerland",
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      Row(
        children: const[
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text("41"),
        ],
      ),
    ],
  ),
);
Widget buttonSection = Container(
  padding: const EdgeInsets.all(15),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:[
      Row(
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
              ),
              Text(
                "CALL",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
      Row(
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.near_me,
                  color: Colors.blue,
                ),
              ),
              Text(
                "ROUTE",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
      Row(
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.share,
                  color: Colors.blue,
                ),
              ),
              Text(
                "SHARE",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  ),         
);
Widget textSection = const Padding(
  padding:  EdgeInsets.all(30),
  child:  Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key?key}):super(key:key);
  
  @override 
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'images/anie.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}