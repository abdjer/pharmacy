import 'dart:js_util';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_web/Screens/Login_Screen.dart';
import 'package:flutter_web/Screens/My_own_Medicen_Screen.dart';
import 'package:flutter_web/modules/classOrder.dart';
import 'package:flutter_web/responsive.dart';

import '../consten.dart';
import '../widget/LeftSection.dart';
import '../widget/Order_card_widget.dart';
import '../widget/listOfOrder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    return Responsive(
      desktop: Scaffold(
        backgroundColor: lightColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
        ),
        body: Row(
          children: [
            LeftSectionWedget(),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                      child: Text(
                        "YOUR ORDER",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w600),
                      ),
                    ),
                    OrederList(crossAxsitCount: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      tablet: Scaffold(
        backgroundColor: lightColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
        ),
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                child: Text(
                  "YOUR ORDER",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              ),
              OrederList(crossAxsitCount: 3),
            ],
          ),
        ),
      ),
      mobileLarge: Scaffold(
        backgroundColor: lightColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
        ),
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                child: Text(
                  "YOUR ORDER",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              ),
              OrederList(crossAxsitCount: 2),
            ],
          ),
        ),
      ),
      mobile: Scaffold(
        backgroundColor: lightColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
        ),
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                child: Text(
                  "YOUR ORDER",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              ),
              OrederList(crossAxsitCount: 1),
            ],
          ),
        ),
      ),
    );
  }
}
