import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import '../consten.dart';

class AddNewDrugCard extends StatelessWidget {
  const AddNewDrugCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          child: AvatarGlow(
            animate: true,
            glowColor: darkColor,
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                radius: 75.0,
                child: Image.network(
                  "assest/images/addDrag.png",
                  height: 200,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                color: black1,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              child: const Text(
                "Add New Drag",
                style: TextStyle(
                    color: lightColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 27),
              ),
            ),
          ),
        )
      ],
    )
        /*InkWell(
      onTap: () {},
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
            alignment: Alignment.center,
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: AvatarGlow(
                      animate: true,
                      glowColor: darkColor,
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          radius: 10.0,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              "assest/images/addDrag.png",
                              height: 200,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )*/
        ;
  }
}
