import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/Screens/homeScreen.dart';
import 'package:flutter_web/consten.dart';
import 'package:flutter_web/responsive.dart';
import 'Register_Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool securText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: darkColor,
      ),
      body: SafeArea(
          child: Responsive.isDesktop(context)
              ? Row(
                  children: [
                    BuildLeftSection(context),
                    BuildRighetSection(1),
                  ],
                )
              : Column(
                  children: [
                    BuildTopSection(context),
                    BuildRighetSection(4),
                  ],
                )),
    );
  }

  Expanded BuildTopSection(BuildContext context) {
    return Expanded(
      child: Padding(
        // padding: const EdgeInsets.all(60.0),
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  //  height: 18,
                  height: 10,
                ),
                Text(
                  "Login to enjoy our app",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'Phone',
                      style: TextStyle(color: darkColor),
                    ),
                    labelStyle: const TextStyle(color: darkColor),
                    prefixIcon: Icon(Icons.phone),
                    prefixIconColor: blodColor,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: normalColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: normalColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  obscureText: securText,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    label: const Text(
                      'Password',
                      style: TextStyle(color: darkColor),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: blodColor,
                    suffixIconColor: blodColor,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            securText = !securText;
                          });
                        },
                        icon: securText
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: normalColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: normalColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: 100,
                  child: MaterialButton(
                      color: normalColor,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                      },
                      child: const Text("Login")),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ));
                        },
                        child: const Text(
                          'Create one',
                          style: TextStyle(color: darkColor),
                        ))
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Expanded BuildRighetSection(double a) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1.15,
        child: Image.network(
          'assest/images/login.jpg',
          fit: BoxFit.cover,
          scale: a,
        ),
      ),
    );
  }

  Expanded BuildLeftSection(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Login to enjoy our app",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'Phone',
                      style: TextStyle(color: darkColor),
                    ),
                    labelStyle: const TextStyle(color: darkColor),
                    prefixIcon: Icon(Icons.phone),
                    prefixIconColor: blodColor,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: normalColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: normalColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: securText,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    label: const Text(
                      'Password',
                      style: TextStyle(color: darkColor),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: blodColor,
                    suffixIconColor: blodColor,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            securText = !securText;
                          });
                        },
                        icon: securText
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: normalColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: normalColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: 100,
                  child: MaterialButton(
                      color: normalColor,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Text("Login")),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 16,),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ));
                        },
                        child: const Text(
                          'Create one',
                          style: TextStyle(color: darkColor),
                        ))
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
