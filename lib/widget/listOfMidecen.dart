import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import '../widget/AddNewDrugCard.dart';
import '../consten.dart';
import '../widget/Medicen_Card_Widget.dart';
import '../modules/classMedicen.dart';

class MedicenList extends StatelessWidget {
  final List<Medicen> medicens;
  final int crossAxsitCount;
  MedicenList({
    super.key,
    required this.medicens,
    required this.crossAxsitCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: buildGridView(
        itemCount: MyMed.length + 1,
        crossAxsitCount: crossAxsitCount,
        childAspectRatio: 1,
        itemBuilder: (context, index) {
          if (index < MyMed.length) {
            return MedicenCard(
              medicen: medicens[index],
            );
          } else {
            return AddNewDrugCard();
          }
        },
      ),
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxsitCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: itemBuilder);
  }
}
