import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/Screens/DragDetailsScreen.dart';
import '../Screens/AddDragScreen.dart';
import '../Screens/My_own_Medicen_Screen.dart';
import '../Screens/OrderDetailScreen.dart';
import '../consten.dart';
import '../Screens/homeScreen.dart';
import '../Screens/Login_Screen.dart';
import 'modules/classMedicen.dart';
import 'dart:ui_web' as ui;

void main() {
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply().copyWith(
              headline5: const TextStyle(
                  color: darkColor, fontSize: 22, fontWeight: FontWeight.bold),
              headline6: const TextStyle(
                color: normalColor,
                fontSize: 18,
              ),
            ),
      ),
      //home: HomeScreen(),
      //home: AddDragScreen(),
      //home: LoginScreen(),
      // home:OrderDetailScreen(nameUser: "ABD AL HAFIZ JERON",orderStatus: "in preparation",mony: true, id: 1,),
     // home: AddDragScreen(),
    );
  }
}
