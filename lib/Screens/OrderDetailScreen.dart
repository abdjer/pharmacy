import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_web/Screens/homeScreen.dart';
import 'package:flutter_web/modules/classOrder.dart';
import 'package:flutter_web/responsive.dart';
import 'package:flutter_web/widget/Medicen_Card_Widget.dart';
import 'package:flutter_web/widget/listOfMidecen.dart';

import '../consten.dart';
import '../modules/classMedicen.dart';
import '../widget/LeftSection.dart';

class OrderDetailScreen extends StatefulWidget {
  final List<Medicen> medicen;
  final String nameUser, orderStatus;
  final int id;
  bool mony;
  String get Paymentstatus {
    if (mony)
      return "paid";
    else
      return "Non paid";
  }

  OrderDetailScreen(
      {super.key,
      required this.id,
      required this.nameUser,
      required this.orderStatus,
      required this.mony,
      required this.medicen});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  void editMony() {
    setState(() {
      widget.mony = !widget.mony;
      orders.firstWhere((Order) => Order.id == widget.id).money =
          !orders.firstWhere((Order) => Order.id == widget.id).money;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Scaffold(
        backgroundColor: blodColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
        ),
        body: Row(children: [
          LeftSectionWedget(),
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                Positioned(
                    left: -10,
                    bottom: -10,
                    right: -10,
                    top: -10,
                    child: Image.network(
                      "assest/images/bg1.png",
                      fit: BoxFit.fill,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                        child: Text(
                          "YOUR ORDER",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 140, horizontal: 30),
                              child: Column(
                                children: [
                                  CardTextWidget(
                                      text1: "Applicant : ",
                                      text2: widget.nameUser),
                                  CardTextWidget2(
                                      text1: "Order status : ",
                                      text2: widget.orderStatus),
                                  CardTextWidget2(
                                      text1: "Payment status : ",
                                      text2: widget.Paymentstatus),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        width: 200,
                                        child:
                                            Center(child: Text("View Order")),
                                        decoration: BoxDecoration(
                                            color: lightColor,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(2000),
                                            ))),
                                  )
                                ],
                              ),
                            ),
                          ),
                          ////////////////////////////////////////////////////////////////////////////////////////
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 80.0, horizontal: 30),
                              child: AspectRatio(
                                aspectRatio: 1.3,
                                child: Image.network(
                                    "assest/images/orderDoctor.png"),
                              ),
                            ),
                          ),
                          ///////////////////////////////////////////////////
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
      tablet: Scaffold(
        backgroundColor: blodColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
        ),
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        body: Stack(
          children: [
            Positioned(
                left: -10,
                bottom: -10,
                right: -10,
                top: -10,
                child: Image.network(
                  "assest/images/bg1.png",
                  fit: BoxFit.fill,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                    child: Text(
                      "YOUR ORDER",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 140, horizontal: 30),
                          child: Column(
                            children: [
                              CardTextWidget(
                                  text1: "Applicant : ",
                                  text2: widget.nameUser),
                              CardTextWidget2(
                                  text1: "Order status : ",
                                  text2: widget.orderStatus),
                              CardTextWidget2(
                                  text1: "Payment status : ",
                                  text2: widget.Paymentstatus),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    width: 200,
                                    child: Center(child: Text("View Order")),
                                    decoration: BoxDecoration(
                                        color: lightColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(2000),
                                        ))),
                              )
                            ],
                          ),
                        ),
                      ),
                      ////////////////////////////////////////////////////////////////////////////////////////
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 80.0, horizontal: 30),
                          child: AspectRatio(
                            aspectRatio: 1.3,
                            child:
                                Image.network("assest/images/orderDoctor.png"),
                          ),
                        ),
                      ),
                      ///////////////////////////////////////////////////
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      mobileLarge: Scaffold(
        backgroundColor: blodColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
        ),
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        body: Stack(
          children: [
            Positioned(
                left: -10,
                bottom: -10,
                right: -10,
                top: -10,
                child: Image.network(
                  "assest/images/bg1.png",
                  fit: BoxFit.fill,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                  child: Text(
                    "YOUR ORDER",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 140,
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      CardTextWidget(
                          text1: "Applicant : ", text2: widget.nameUser),
                      CardTextWidget2(
                          text1: "Order status : ", text2: widget.orderStatus),
                      CardTextWidget2(
                          text1: "Payment status : ",
                          text2: widget.Paymentstatus),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            width: 200,
                            child: Center(child: Text("View Order")),
                            decoration: BoxDecoration(
                                color: lightColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2000),
                                ))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      mobile: Scaffold(
        backgroundColor: blodColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
        ),
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        body: Stack(
          children: [
            Positioned(
                left: -10,
                bottom: -10,
                right: -10,
                top: -10,
                child: Image.network(
                  "assest/images/bg1.png",
                  fit: BoxFit.fill,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                  child: Text(
                    "YOUR ORDER",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 140,
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      CardTextWidget(
                          text1: "Applicant : ", text2: widget.nameUser),
                      CardTextWidget2(
                          text1: "Order status : ", text2: widget.orderStatus),
                      CardTextWidget2(
                          text1: "Payment status : ",
                          text2: widget.Paymentstatus),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            width: 200,
                            child: Center(child: Text("View Order")),
                            decoration: BoxDecoration(
                                color: lightColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2000),
                                ))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardTextWidget extends StatelessWidget {
  const CardTextWidget({
    super.key,
    required this.text2,
    required this.text1,
  });

  final String text2, text1;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      color: lightColor,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(80),
                ),
                color: darkColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(7, 0),
                    blurRadius: 100.0,
                    color: Color.fromARGB(255, 41, 40, 40),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  text1,
                  style: TextStyle(
                    color: lightColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              // padding: EdgeInsets.only(right: 20),

              child: Center(
                child: Text(
                  " $text2",
                  style: const TextStyle(
                    color: black2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardTextWidget2 extends StatelessWidget {
  const CardTextWidget2({
    super.key,
    required this.text2,
    required this.text1,
  });

  final String text2, text1;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      color: lightColor,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(80),
                ),
                color: darkColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(7, 0),
                    blurRadius: 100.0,
                    color: Color.fromARGB(255, 41, 40, 40),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  text1,
                  style: TextStyle(
                    color: lightColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_left_rounded),
                      onPressed: () {},
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                        color: whiteColor,
                      ),
                      child: Text(
                        " $text2",
                        style: const TextStyle(
                          color: black2,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_right_rounded),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
