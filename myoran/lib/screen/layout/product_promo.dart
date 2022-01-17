import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/product_detail/product_detail1.dart';

class ProductPromo extends StatefulWidget {
  final String text;
  const ProductPromo({Key? key, required this.text}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  ProductPromoState createState() => ProductPromoState(text: text);
}

class ProductPromoState extends State<ProductPromo> {
  final String text;
  ProductPromoState({Key? key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 3),
          child: Container(
            // alignment: Alignment.center,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color.fromRGBO(237, 237, 237, 0.79)),
            width: 370,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 14)
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Color.fromRGBO(237, 237, 237, 0.79)),
          width: 370,
          height: 180,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 110,
                    height: 160,
                    color: Colors.white,
                    child: Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 5, left: 5, right: 5),
                        child: Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                primary: Colors.white,
                              ),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => ProductDetail());
                                Navigator.push(context, route);
                              },
                              child: Image.asset(
                                'images/ao_nu1.png',
                                width: 100,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text('Áo nữ thời trang 2021',
                                  maxLines: 2, style: TextStyle(fontSize: 10)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('68.000đ',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.red)),
                                    Text(
                                      'đã bán 1,1k',
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 110,
                    height: 160,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/ao_nu1.png',
                            width: 100,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('Áo nữ thời trang 2021',
                                maxLines: 2, style: TextStyle(fontSize: 10)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('68.000đ',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red)),
                                  Text(
                                    'đã bán 1,1k',
                                    style: TextStyle(fontSize: 8),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 110,
                    height: 160,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/ao_nu1.png',
                            width: 100,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('Áo nữ thời trang 2021',
                                maxLines: 2, style: TextStyle(fontSize: 10)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('68.000đ',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red)),
                                  Text(
                                    'đã bán 1,1k',
                                    style: TextStyle(fontSize: 8),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    width: 110,
                    height: 160,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/ao_nu1.png',
                            width: 100,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('Áo nữ thời trang 2021',
                                maxLines: 2, style: TextStyle(fontSize: 10)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('68.000đ',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red)),
                                  Text(
                                    'đã bán 1,1k',
                                    style: TextStyle(fontSize: 8),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
