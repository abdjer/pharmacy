import 'package:flutter/material.dart';
import 'package:flutter_web/modules/classMedicen.dart';
import 'package:flutter_web/responsive.dart';
import 'package:flutter_web/widget/listOfMidecen.dart';
import '../Screens/homeScreen.dart';
import '../consten.dart';
import '../modules/classOrder.dart';
import '../widget/LeftSection.dart';
import '../widget/Medicen_Card_Widget.dart';
import '../widget/Order_card_widget.dart';

class MyMedicen extends StatelessWidget {
  const MyMedicen({super.key});
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
                        "YOUR MEDICEN",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w600),
                      ),
                    ),
                    MedicenList(
                      medicens: MyMed,
                      crossAxsitCount: 4,
                    ),
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
                  "YOUR MEDICEN",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              ),
              MedicenList(
                medicens: MyMed,
                crossAxsitCount: 3,
              ),
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
                  "YOUR MEDICEN",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              ),
              MedicenList(
                medicens: MyMed,
                crossAxsitCount: 2,
              ),
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
                  "YOUR MEDICEN",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              ),
              MedicenList(
                medicens: MyMed,
                crossAxsitCount: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
