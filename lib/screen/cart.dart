import 'package:flutter/material.dart';
import 'package:food/utiles/colors.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart Screen "),
          backgroundColor: Colors.green.shade300,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: cartList.map((e) {
                    total = total! + e['price'] as int;
                    return Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: [
                          Image.asset(
                            "${e['img']}",
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${e['name']}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\$${e['price']}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                          Spacer( ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  cartList.remove(e);
                                  total = 0;
                                });
                              },
                              child: Icon(
                                Icons.delete,
                              )),
                        ],
                      ),
                      alignment: Alignment.centerLeft,
                    );
                  }).toList(),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(alignment: Alignment.bottomLeft),
                Text("Total Quantity :${cartList.length}"),
                SizedBox(height: 15,),
                Text(
                  "Total Price :\$ ${total}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
