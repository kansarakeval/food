import 'package:flutter/material.dart';
import 'package:food/utiles/colors.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    Map e=ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.green,
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(40),
                        height: MediaQuery.of(context).size.height * 1.01,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                              topLeft: Radius.circular(60)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.30,
                              height: MediaQuery.of(context).size.height * 0.07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green),
                              child: Row(
                                children: [
                                  Icon(Icons.remove),
                                  Spacer(flex: 5),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  Spacer(flex: 5),
                                  Icon(Icons.add)
                                ],
                              ),
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsetsDirectional.all(5),
                            ),
                            SizedBox(height: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e["name"],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                    "Preheat grill on high. \nLine a large heavy-rimmed baking tray with foil and toss the chillies and garlic with 1 tbs oil.\n Cook under the grill, turning the chillies and garlic halfway through cooking, \nfor 15 mins or until the chillies are charred all over and garlic skins are blackened. Transfer to a bowl.\n Cover and set aside for 10 mins to cool.",
                                    style: TextStyle(fontSize: 18)),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.local_fire_department_rounded,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "100 kcal",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.access_alarm,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "5-10 min",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Ingradients",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Colors.grey.shade300),
                                            child: Image.asset(
                                              "assets/image/c1.png",
                                              width: 1,
                                              height: 1,
                                            ),
                                            padding: EdgeInsetsDirectional.all(5),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Container(
                                            width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Colors.grey.shade300),
                                            child: Image.asset(
                                              "assets/image/c2.png",
                                              width: 1,
                                              height: 1,
                                            ),
                                            padding: EdgeInsetsDirectional.all(5),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Container(
                                            width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Colors.grey.shade300),
                                            child: Image.asset(
                                              "assets/image/c3.png",
                                              width: 1,
                                              height: 1,
                                            ),
                                            padding: EdgeInsetsDirectional.all(5),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Container(
                                            width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Colors.grey.shade300),
                                            child: Image.asset(
                                              "assets/image/c4.png",
                                              width: 1,
                                              height: 1,
                                            ),
                                            padding: EdgeInsetsDirectional.all(5),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Container(
                                            width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Colors.grey.shade300),
                                            child: Image.asset(
                                              "assets/image/c5.png",
                                              width: 1,
                                              height: 1,
                                            ),
                                            padding: EdgeInsetsDirectional.all(5),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(cartList.contains(e));
                                            cartList.add(e);
                                        });

                                        Navigator.pop(context);
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.90,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.07,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(20)),
                                            child: Text(
                                              "Add To Cart",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                            alignment:
                                            AlignmentDirectional.center,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                      height: 300,
                      alignment: Alignment.center,
                      child: Image.asset(
                        e["img"],
                        width: 120,
                        height: 150,
                      )),
                ],
              ),
            ),
            ),
        );
    }
}
/*InkWell(
                                        onTap: () {
                                          setState(() {
                                            if(cartList.contains(e));
                                              cartList.add(e);
                                          });

                                          Navigator.pop(context);
                                        },
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.90,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.07,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                  BorderRadius.circular(20)),
                                              child: Text(
                                                "Add To Cart",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                              alignment:
                                              AlignmentDirectional.center,
                                            )
                                          ],
                                        ),
                                      )*/