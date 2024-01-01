import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Screens/OrderDetailScreen.dart';
import '../consten.dart';
import '../modules/classMedicen.dart';
import '../modules/classOrder.dart';

class OrderCard extends StatelessWidget {
  final List<Medicen>medicen;
  int id;
  String nameUser;
  Order_status orderStatus;
  bool money;
  OrderCard(
    this.id,
    this.nameUser,
    this.orderStatus,
    this.money, {
    super.key, required this.medicen,
  });
  String get getOrdertext {
    switch (orderStatus) {
      case Order_status.preparation:
        return "in preparation";
        break;
      case Order_status.resive:
        return "sent";
        break;
      case Order_status.sent:
        return " received";
        break;
      default:
        return 'غير معروف';
    }
  }

  String get Paymentstatus {
    if (money)
      return "paid";
    else
      return "Non paid";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => OrderDetailScreen(
              id: id,
              nameUser: nameUser,
              orderStatus: getOrdertext,
              mony: money, medicen: medicen,
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
                "assest/images/doctor.png",
                height: 200,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: double.infinity,
              height: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 12, right: 8, bottom: 4, top: 4),
                        decoration: const BoxDecoration(
                          color: black1,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: Text(
                          "Applicant : $nameUser",
                          style: TextStyle(
                            color: lightColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
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
                          "Order status  : $getOrdertext",
                          style: TextStyle(
                            color: lightColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12, bottom: 4, top: 4),
                    decoration: const BoxDecoration(
                      color: black1,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Payment status : $Paymentstatus",
                          style: TextStyle(
                            color: lightColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
