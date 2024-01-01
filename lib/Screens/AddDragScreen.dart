import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_web/responsive.dart';

import '../consten.dart';
import '../modules/classMedicen.dart';
import '../widget/LeftSection.dart';

class AddDragScreen extends StatefulWidget {
  Medicen medicen = Medicen(
    1,
    "enter the name",
    "enter the name",
    ["enter the category"],
    "enter the manificture",
    0,
    DateTime.now(),
    0,
    "assest/images/drug.png",
  );
  late int id = 0, price = 0, amount = 0;
  late String scientificName = "enter the name",
      commercialName = "enter the name",
      manufacturer = "enter the manificture",
      image = "assest/images/drug.png";
  late DateTime expirationDate = DateTime.now();
  late List<String> catogires = [];
  AddDragScreen({super.key});

  @override
  State<AddDragScreen> createState() => _DetailsState();
}

class _DetailsState extends State<AddDragScreen> {
  String listToString(List<dynamic> lists) {
    String result = "";
    for (var list in lists) {
      result = result + "  " + list;
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(widget.medicen.scientificName);
      }),
      backgroundColor: lightColor,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: darkColor,
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(widget.medicen);
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
            child: ListView(
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
                      "assest/images/AddDrag.png",
                      height: 200,
                    ),
                  ),
                ),

                BuildRowInformatio(
                  widget: widget,
                  text1: "Scientific Name",
                  text2: widget.scientificName,
                  icon: Icons.science_rounded,
                  press: () {
                    BuildFloutingDialog(
                      context,
                      widget.medicen.scientificName,
                      Icons.science_rounded,
                    ).then((value) {
                      setState(() {
                        widget.scientificName = value;
                      });
                    });
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                BuildRowInformatio(
                  widget: widget,
                  text1: "Commercial Name",
                  text2: widget.commercialName,
                  icon: Icons.label_important_rounded,
                  press: () {
                    BuildFloutingDialog(
                      context,
                      widget.commercialName,
                      Icons.label_important_rounded,
                    ).then((value) {
                      setState(() {
                        widget.commercialName = value;
                      });
                    });
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                BuildRowInformatio(
                  widget: widget,
                  text1: "Category",
                  text2: listToString(widget.catogires),
                  icon: Icons.category_rounded,
                  press: () {
                    BuildFloutingDialogCategory().then((value) {
                      setState(() {
                        widget.catogires = value;
                      });
                    });
                  },
                ),

                SizedBox(
                  height: 12,
                ),
                BuildRowInformatio(
                  widget: widget,
                  text1: "Company",
                  text2: widget.manufacturer,
                  icon: Icons.place_rounded,
                  press: () {
                    BuildFloutingDialog(
                      context,
                      widget.manufacturer,
                      Icons.place_rounded,
                    ).then((value) {
                      setState(() {
                        widget.manufacturer = value;
                      });
                    });
                  },
                ),

                SizedBox(
                  height: 12,
                ),
                BuildRowInformatio(
                  widget: widget,
                  text1: "Quantity",
                  text2: widget.amount,
                  icon: Icons.numbers,
                  press: () {
                    BuildFloutingDialog(
                      context,
                      widget.amount.toString(),
                      Icons.numbers,
                    ).then((value) {
                      setState(() {
                        widget.amount = value;
                      });
                    });
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                BuildRowInformatio(
                  widget: widget,
                  text1: "Expiration Date",
                  text2:
                      "${widget.expirationDate.year} / ${widget.expirationDate.month} / ${widget.expirationDate.day}",
                  icon: Icons.calendar_month_rounded,
                  press: () async {
                    DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: widget.expirationDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100));
                    if (newDate == null) return;
                    setState(() {
                      widget.expirationDate = newDate;
                    });
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                BuildRowInformatio(
                  widget: widget,
                  text1: "Price",
                  text2: widget.price,
                  icon: Icons.place_rounded,
                  press: () {
                    BuildFloutingDialog(
                      context,
                      widget.price.toString(),
                      Icons.place_rounded,
                    ).then((value) {
                      setState(() {
                        widget.price = value;
                      });
                    });
                  },
                ),

                SizedBox(
                  height: 14,
                ),
              ],
            ),
          )
        ],
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

  Future<dynamic> BuildFloutingDialogCategory() {
    List<String> categoryDialog = [];
    String? group0 = category[1]["title"],
        group1 = category[1]["title"],
        group2 = category[1]["title"],
        group3 = category[1]["title"],
        group4 = category[1]["title"];
    return showDialog(
        builder: (context) {
          return AlertDialog(
            title: Text("The Category"),
            actions: [
              MaterialButton(
                onPressed: () {
                  for (var cat in categoryDialog) {
                    print(cat);
                  }
                  try {
                    Navigator.of(context).pop(category);
                  } catch (e) {}
                },
                child: Text("add"),
              )
            ],
            content: Column(
              children: [
                RadioListTile(
                  title: Text(category[0]["title"]),
                  value: category[0]["title"],
                  groupValue: group0,
                  onChanged: (value) {
                    setState(() {
                      group0 = value;
                      categoryDialog.add(value);
                    });
                  },
                ),
                RadioListTile(
                  title: Text(category[1]["title"]),
                  value: category[1]["title"],
                  groupValue: group1,
                  onChanged: (value) {
                    setState(() {
                      group1 = value;
                      categoryDialog.add(value);
                    });
                  },
                ),
                RadioListTile(
                  title: Text(category[2]["title"]),
                  value: category[2]["title"],
                  groupValue: group2,
                  onChanged: (value) {
                    setState(() {
                      group2 = value;
                      categoryDialog.add(value);
                    });
                  },
                ),
                RadioListTile(
                  title: Text(category[3]["title"]),
                  value: category[3]["title"],
                  groupValue: group3,
                  onChanged: (value) {
                    setState(() {
                      group3 = value;
                      categoryDialog.add(value);
                    });
                  },
                ),
                RadioListTile(
                  title: Text(category[4]["title"]),
                  value: category[4]["title"],
                  groupValue: group4,
                  onChanged: (value) {
                    setState(() {
                      group4 = value;
                      categoryDialog.add(value);
                    });
                  },
                ),
              ],
            ),
            /*Column(children: [
              Text(
                "Chose The Category",
              ),
              ListView.builder(
                  itemCount: category.length,
                  itemBuilder: (context, index) => RadioListTile(
                        title: Text(category[index]["title"]),
                        value: category[index]["title"],
                        groupValue: categoryDialog,
                        onChanged: (value) {
                          categoryDialog.add(value);
                        },
                      )),
            ]),*/
          );
        },
        context: context);
  }
}

class BuildRowInformatio extends StatefulWidget {
  BuildRowInformatio({
    super.key,
    required this.widget,
    required this.text1,
    required this.text2,
    required this.icon,
    required this.press,
  });

  final AddDragScreen widget;
  final String text1;
  final IconData icon;
  final dynamic text2;
  final Function press;
  @override
  State<BuildRowInformatio> createState() => _BuildRowInformatioState();
}

class _BuildRowInformatioState extends State<BuildRowInformatio> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${widget.text1} : ",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          "${widget.text2}",
          style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
        IconButton(
          onPressed: () {
            try {
              widget.press();
            } catch (e) {}
          },
          icon: Icon(Icons.edit),
        )
      ],
    );
  }
}
