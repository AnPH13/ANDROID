import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/layout/bottom_bar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // automaticallyImplyLeading: false,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       padding: EdgeInsets.zero,
      //       constraints: const BoxConstraints(),
      //       onPressed: () {
      //         Route route = MaterialPageRoute(builder: (context) => Search());
      //         Navigator.push(context, route);
      //       },
      //       icon: Icon(Icons.search, color: Colors.black),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     IconButton(
      //       padding: EdgeInsets.zero,
      //       constraints: const BoxConstraints(),
      //       onPressed: () {
      //         Route route = MaterialPageRoute(builder: (context) => message());
      //         Navigator.push(context, route);
      //       },
      //       icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     IconButton(
      //       padding: EdgeInsets.zero,
      //       constraints: const BoxConstraints(),
      //       onPressed: () {
      //         Route route =
      //             MaterialPageRoute(builder: (context) => Shopping_Cart());
      //         Navigator.push(context, route);
      //       },
      //       icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //   ],
      // ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.black26,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      'images/ao_khoac1.png',
                      fit: BoxFit.cover,
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    //   child: Row(
                    //     children: [
                    //       IconButton(
                    //         onPressed: () {
                    //           Navigator.pop(context);
                    //         },
                    //         icon: const Icon(
                    //           Icons.arrow_back,
                    //           color: Colors.black,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 20, bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Text(
                          ' 1/11 ',
                          style: TextStyle(
                            backgroundColor: Color.fromRGBO(171, 6, 174, 0.8),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Text(
                  'Áo Cadigan nỉ logo ngực- Áo khoác nỉ dáng rộng cổ V 4 khuy ullzang - MYORAN SHOP',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '168.000 đ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                      ),
                    ),
                    Icon(Icons.favorite_border)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                color: Color.fromRGBO(252, 235, 237, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '4,9',
                      style: TextStyle(
                        color: Color.fromRGBO(171, 6, 174, 0.8),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(171, 6, 174, 0.8),
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(171, 6, 174, 0.8),
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(171, 6, 174, 0.8),
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(171, 6, 174, 0.8),
                      size: 16,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Color.fromRGBO(171, 6, 174, 0.8),
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        color: Color.fromRGBO(171, 6, 174, 0.8),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Đã Đánh Giá 38',
                      style: TextStyle(
                        color: Color.fromRGBO(171, 6, 174, 0.8),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        color: Color.fromRGBO(171, 6, 174, 0.8),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Đã Bán 106',
                      style: TextStyle(
                        color: Color.fromRGBO(171, 6, 174, 0.8),
                      ),
                    ),
                  ],
                ),
              ),
              line,
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text('Màu Sắc:'),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.black26,
                            )),
                        child: Icon(
                          Icons.circle,
                          color: Color.fromRGBO(255, 214, 0, 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.black26,
                            )),
                        child: Icon(
                          Icons.circle,
                          color: Color.fromRGBO(255, 0, 214, 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.black26,
                            )),
                        child: Icon(
                          Icons.circle,
                          color: Color.fromRGBO(57, 211, 32, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text('Kích thước:'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(width: .5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 30),
                      child: const Text("S",
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(width: .5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 30),
                      child: const Text("M",
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(width: .5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 30),
                      child: const Text("L",
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                    )
                  ],
                ),
              ),
              line,
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Thong tin san pham",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Wrap(
                        children: const [
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae nibh ex. Fusce quis sodales arcu. "
                            "Nullam mattis tristique euismod. Curabitur nec eleifend massa. Praesent ut cursus dolor, ut dignissim nisi. "
                            "Mauris tincidunt interdum mauris, sed posuere sapien gravida pharetra. Quisque volutpat et eros eu ornare. "
                            "Suspendisse potenti. ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    line,
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      // alignment: Alignment.topRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("Xem thêm"),
                          Icon(Icons.arrow_right_outlined),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const Text("Đánh giá"),
                        GFListTile(
                          padding: EdgeInsets.zero,
                          avatar: SizedBox(
                            width: 55,
                            height: 55,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'images/ao_khoac1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: const Text(
                            "Hoàng An",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subTitle: Row(
                            children: const [
                              Icon(Icons.star, size: 16, color: Colors.orange),
                              Icon(Icons.star, size: 16, color: Colors.orange),
                              Icon(Icons.star, size: 16, color: Colors.orange),
                              Icon(Icons.star, size: 16, color: Colors.orange),
                              Icon(Icons.star, size: 16, color: Colors.orange),
                            ],
                          ),
                          description: Wrap(
                            children: const [
                              Text(
                                  "Chất lượng sản phẩm tuyệt vời, Đóng gói sản phẩm rất đẹp và chắc chắn "),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomBar(),
    );
  }
}

Widget line = Padding(
  padding: EdgeInsets.only(left: 10, right: 10),
  child: Container(
    padding: const EdgeInsets.symmetric(vertical: 20.0),
    color: Colors.grey,
    width: double.maxFinite,
    height: 1,
  ),
);
