import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/Screens/homeScreen.dart';

import '../Services/regester_cubit/cubit.dart';
import '../Services/regester_cubit/states.dart';
import '../consten.dart';
import '../responsive.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool securText = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController phonController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RegesterCubit(),
        child: BlocConsumer<RegesterCubit, RegesterStates>(
            listener: (context, state) {
          // TODO: implement listener
        }, builder: (context, state) {
          var regester = RegesterCubit.get(context);
          return Scaffold(
            backgroundColor: whiteColor,
            appBar: AppBar(
              backgroundColor: darkColor,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: SafeArea(
                child: Responsive.isDesktop(context)
                    ? Row(
                        children: [BuildLeftSection(60), BuildRighetSection(1)],
                      )
                    : Column(
                        children: [BuildLeftSection(10), BuildRighetSection(2)],
                      )),
          );
        }));
  }

  Expanded BuildRighetSection(double scaleImag) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            'assest/images/register.png',
            fit: BoxFit.cover,
            scale: scaleImag,
          ),
        ),
      ),
    );
  }

  BlocProvider BuildLeftSection(double padding) {
    return BlocProvider(
        create: (context) => RegesterCubit(),
        child: BlocConsumer<RegesterCubit, RegesterStates>(
            listener: (context, state) {
          // TODO: implement listener
        }, builder: (context, state) {
          var regester = RegesterCubit.get(context);
          return Expanded(
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Register",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: Text(
                        'User Name',
                        style: TextStyle(color: darkColor),
                      ),
                      prefixIcon: Icon(Icons.person),
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
                    height: 18,
                  ),
                  TextFormField(
                    //controller: phonController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text(
                        'Phone',
                        style: TextStyle(color: darkColor),
                      ),
                      prefixIcon: Icon(Icons.phone),
                      prefixIconColor: blodColor,
                      hintText: '(963)12345678',
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
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: securText,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      label: Text(
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
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: 100,
                      child: ConditionalBuilder(
                        condition: state is! RegesterLoadingState,
                        builder: (context) => MaterialButton(
                            color: Colors.white70,
                            onPressed: () {
                              try {
                                regester.register(
                                    context: context,
                                    email: nameController.text,
                                    password: passwordController.text);
                              } catch (e) {
                                print("sdfghjk");
                              }
                              print("press");
                            },
                            child: Text("Register",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600))),
                        fallback: (context) =>
                            Center(child: CircularProgressIndicator()),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
