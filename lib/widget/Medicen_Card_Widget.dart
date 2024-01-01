import 'package:flutter/material.dart';
import 'package:flutter_web/modules/classMedicen.dart';

import '../Screens/DragDetailsScreen.dart';
import '../consten.dart';

class MedicenCard extends StatelessWidget {
  final Medicen medicen;
  MedicenCard({super.key, required this.medicen});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsDRagScreen(
              data: medicen,
            ),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 250,
            height: 300,
            //  color: blodColor,
            alignment: Alignment.bottomCenter,
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 30.0,
                  color: Color.fromARGB(255, 41, 40, 40),
                )
              ],
              color: blodColor,
              borderRadius: BorderRadius.all(Radius.circular(50)), //var
            ),
            width: double.infinity,
            height: 200,
          ),
          Container(
            alignment: Alignment.topCenter,
            width: 250,
            height: 300,
            child: AspectRatio(
              aspectRatio: 1.8,
              child: Image.network(
                "assest/images/drag.png",
                height: 200,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: double.infinity,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  buildText("Name", medicen.commercialName),
                  buildText("manufacturer", medicen.manufacturer),
                  buildText("amount", medicen.amount.toString()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildText(String text1, String text2) {
    return Container(
      padding: EdgeInsets.only(left: 12, bottom: 4, top: 4),
      decoration: const BoxDecoration(
        color: black1,
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: Row(
        children: [
          Text(
            "$text1 : $text2",
            style: TextStyle(
              color: lightColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
