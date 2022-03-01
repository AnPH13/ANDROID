import 'package:flutter/material.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

class CTSP extends StatefulWidget {
  const CTSP({Key? key}) : super(key: key);

  @override
  _CTSPState createState() => _CTSPState();
}

class _CTSPState extends State<CTSP> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  height: 450,
                  child: Image.asset(
                    "images/ao_khoac1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Tên sản phẩm",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "120.000",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.favorite_border,
                    size: 36,
                  ),
                ),
                line,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Kich thuoc:"),
                    const SizedBox(height: 10),
                    Row(
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
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey)),
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
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey)),
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
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey)),
                        )
                      ],
                    ),
                  ],
                ),
                line,
                Column(
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
                    Align(
                      alignment: Alignment.topRight,
                      child: Row(
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
                            "Thanh Trâm",
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
                line,
                Column(
                  children: const [
                    Text("Xem thêm một số sản phẩm"),
                  ],
                ),
              ],
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  iconSize: 40,
                  icon: Icon(Icons.chevron_left),
                ),
              ),
              actions: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: 40,
                        icon: Icon(Icons.search),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/giohang");
                        },
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: 40,
                        icon: Icon(Icons.shopping_cart),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget line = Container(
  padding: const EdgeInsets.symmetric(vertical: 20.0),
  color: Colors.grey,
  width: double.maxFinite,
  height: 0.5,
);
