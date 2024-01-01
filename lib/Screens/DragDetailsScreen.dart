import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';

import '../consten.dart';
import '../modules/classMedicen.dart';
import '../widget/LeftSection.dart';

class DetailsDRagScreen extends StatefulWidget {
  final Medicen data;
  late String price, amount;
  DetailsDRagScreen({super.key, required this.data});

  @override
  State<DetailsDRagScreen> createState() => _DetailsState();
}

class _DetailsState extends State<DetailsDRagScreen> {
  String listToString(List<dynamic> lists) {
    String result = "";
    for (var list in lists) {
      result = result + "  " + list;
    }
    return result;
  }

  @override
  void initState() {
    widget.amount = widget.data.amount.toString();
    widget.price = widget.data.price.toString();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Scaffold(
        backgroundColor: lightColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop(widget.data);
              },
              child: Row(
                children: [Text("Delete"), Icon(Icons.delete)],
              ),
            ),
          ],
        ),
        body: Row(
          children: [
            LeftSectionWedget(),
            Expanded(
              flex: 6,
              child: Stack(children: [
                // Positioned(
                //   right: 0,
                //   left: 0,
                //   // child: Image.asset(
                //   child: Image.network(
                //     "images/background2.jpg",
                //     fit: BoxFit.fill,
                //   ),
                // ),
                ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  children: [
                    // Image.asset(
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 50),
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

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Scientific Name : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.data.scientificName,
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Commercial Name : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.data.commercialName,
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Category : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          listToString(widget.data.catogires),
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Company : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.data.manufacturer,
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Quantity : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.amount,
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                          onPressed: () {
                            BuildFloutingDialog(
                                    context, " Amount", Icons.numbers)
                                .then((value) {
                              setState(() {
                                widget.amount = value;
                              });
                            });
                          },
                          icon: Icon(Icons.edit),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Expiration Date : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${widget.data.expirationDate.year} / ${widget.data.expirationDate.month} / ${widget.data.expirationDate.day}",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Price : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.price,
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                          onPressed: () {
                            BuildFloutingDialog(context, " Price",
                                    Icons.attach_money_rounded)
                                .then((value) {
                              setState(() {
                                widget.price = value;
                              });
                            });
                          },
                          icon: Icon(Icons.edit),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
      tablet: Scaffold(
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        backgroundColor: lightColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop(widget.data);
              },
              child: Row(
                children: [Text("Delete"), Icon(Icons.delete)],
              ),
            ),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(20),
          children: [
            // Image.asset(
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scientific Name : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.scientificName,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Commercial Name : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.commercialName,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Category : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  listToString(widget.data.catogires),
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Company : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.manufacturer,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Quantity : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.amount,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {
                    BuildFloutingDialog(context, " Amount", Icons.numbers)
                        .then((value) {
                      setState(() {
                        widget.amount = value;
                      });
                    });
                  },
                  icon: Icon(Icons.edit),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Expiration Date : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${widget.data.expirationDate.year} / ${widget.data.expirationDate.month} / ${widget.data.expirationDate.day}",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Price : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.price,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {
                    BuildFloutingDialog(
                            context, " Price", Icons.attach_money_rounded)
                        .then((value) {
                      setState(() {
                        widget.price = value;
                      });
                    });
                  },
                  icon: Icon(Icons.edit),
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
      mobileLarge: Scaffold(
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        backgroundColor: lightColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop(widget.data);
              },
              child: Row(
                children: [Text("Delete"), Icon(Icons.delete)],
              ),
            ),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(20),
          children: [
            // Image.asset(
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scientific Name : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.scientificName,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Commercial Name : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.commercialName,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Category : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  listToString(widget.data.catogires),
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Company : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.manufacturer,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Quantity : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.amount,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {
                    BuildFloutingDialog(context, " Amount", Icons.numbers)
                        .then((value) {
                      setState(() {
                        widget.amount = value;
                      });
                    });
                  },
                  icon: Icon(Icons.edit),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Expiration Date : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${widget.data.expirationDate.year} / ${widget.data.expirationDate.month} / ${widget.data.expirationDate.day}",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Price : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.price,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {
                    BuildFloutingDialog(
                            context, " Price", Icons.attach_money_rounded)
                        .then((value) {
                      setState(() {
                        widget.price = value;
                      });
                    });
                  },
                  icon: Icon(Icons.edit),
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
      mobile: Scaffold(
        drawer: Drawer(
          child: LeftSectionDrawer(),
        ),
        backgroundColor: lightColor,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: darkColor,
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop(widget.data);
              },
              child: Row(
                children: [Text("Delete"), Icon(Icons.delete)],
              ),
            ),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(20),
          children: [
            // Image.asset(
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scientific Name : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.scientificName,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Commercial Name : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.commercialName,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Category : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  listToString(widget.data.catogires),
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Company : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.manufacturer,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Quantity : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.amount,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {
                    BuildFloutingDialog(context, " Amount", Icons.numbers)
                        .then((value) {
                      setState(() {
                        widget.amount = value;
                      });
                    });
                  },
                  icon: Icon(Icons.edit),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Expiration Date : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${widget.data.expirationDate.year} / ${widget.data.expirationDate.month} / ${widget.data.expirationDate.day}",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Price : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.price,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {
                    BuildFloutingDialog(
                            context, " Price", Icons.attach_money_rounded)
                        .then((value) {
                      setState(() {
                        widget.price = value;
                      });
                    });
                  },
                  icon: Icon(Icons.edit),
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<dynamic> BuildFloutingDialog(
      BuildContext context, String text1, IconData icone) {
    TextEditingController controller = TextEditingController();
    return showDialog(
        builder: (context) {
          return AlertDialog(
            title: Text("The $text1"),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop(controller.text.toString());
                },
                child: Text("add"),
              )
            ],
            content: TextFormField(
              controller: controller,
              // cursorColor: Colors.black,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text(
                    "Edite $text1 of this drug",
                    style: TextStyle(color: Colors.black),
                  ),
                  prefixIcon: Icon(
                    icone,
                    color: Colors.black,
                  ),
                  hintText: "Enter $text1 of this drug",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          );
        },
        context: context);
  }
}
