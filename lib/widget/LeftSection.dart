import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter_web/modules/classMedicen.dart';

import '../Screens/Login_Screen.dart';
import '../Screens/My_own_Medicen_Screen.dart';
import '../Screens/homeScreen.dart';
import '../consten.dart';

class LeftSectionWedget extends StatelessWidget {
  const LeftSectionWedget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(15, 0),
              blurRadius: 50.0,
              color: Color.fromARGB(255, 41, 40, 40),
            )
          ],
          color: darkColor,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: blodColor,
                child: Row(
                  children: [
                    Expanded(
                      child: AvatarGlow(
                        animate: true,
                        glowColor: darkColor,
                        child: Material(
                          elevation: 8.0,
                          shape: const CircleBorder(),
                          child: CircleAvatar(
                              backgroundColor: darkColor,
                              radius: 50.0,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  "assest/images/doctora.png",
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                      ),

                      /* AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Image.network(
                              "assest/images/person.png",
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),*/
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ABD JEROUN",
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Text(
                              "+963957257941",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    BuildDrowerPart(Icons.shopping_cart_rounded, "MY ORDER",
                        () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    }),
                    const Divider(color: whiteColor),
                    BuildDrowerPart(Icons.medication_rounded, "MY MEDICEN", () {
                      Navigator.of(context)
                          .push(
                        MaterialPageRoute(
                            builder: (context) => const MyMedicen()),
                      )
                          .then((value) {
                        MyMed.remove(MyMed.firstWhere(
                            (medicen) => medicen.id == value.id));
                      });
                    }),
                    const Divider(color: whiteColor),
                    BuildDrowerPart(Icons.call, "CONTACT US", () {}),
                    const Divider(color: whiteColor),
                    BuildDrowerPart(Icons.logout, "LOG OUT", () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                          (route) => false);
                    }),
                    const Divider(color: whiteColor),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding BuildDrowerPart(IconData icon, String title, Function ontap) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          ontap();
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: lightColor,
              size: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  color: lightColor, fontSize: 30, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class LeftSectionDrawer extends StatelessWidget {
  LeftSectionDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(15, 0),
            blurRadius: 50.0,
            color: Color.fromARGB(255, 41, 40, 40),
          )
        ],
        color: darkColor,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: blodColor,
              child: Row(
                children: [
                  Expanded(
                    child: AvatarGlow(
                      animate: true,
                      glowColor: darkColor,
                      child: Material(
                        elevation: 8.0,
                        shape: const CircleBorder(),
                        child: CircleAvatar(
                            backgroundColor: darkColor,
                            radius: 50.0,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                "assest/images/doctora.png",
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
                    ),

                    /* AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Image.network(
                            "assest/images/person.png",
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),*/
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ABD JEROUN",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Text(
                            "+963957257941",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  BuildDrowerPart(Icons.shopping_cart_rounded, "MY ORDER", () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  }),
                  const Divider(color: whiteColor),
                  BuildDrowerPart(Icons.medication_rounded, "MY MEDICEN", () {
                    Navigator.of(context)
                        .push(
                      MaterialPageRoute(
                          builder: (context) => const MyMedicen()),
                    )
                        .then((value) {
                      MyMed.remove(MyMed.firstWhere(
                          (medicen) => medicen.id == value.id));
                    });
                  }),
                  const Divider(color: whiteColor),
                  BuildDrowerPart(Icons.call, "CONTACT US", () {}),
                  const Divider(color: whiteColor),
                  BuildDrowerPart(Icons.logout, "LOG OUT", () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false);
                  }),
                  const Divider(color: whiteColor),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding BuildDrowerPart(IconData icon, String title, Function ontap) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          ontap();
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: lightColor,
              size: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  color: lightColor, fontSize: 30, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
