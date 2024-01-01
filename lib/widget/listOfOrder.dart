import 'package:flutter/material.dart';
import '../widget/Order_card_widget.dart';

import '../modules/classOrder.dart';

class OrederList extends StatelessWidget {
  final int crossAxsitCount;
  OrederList({super.key, required this.crossAxsitCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: buildGridView(
        itemCount: orders.length,
        crossAxsitCount: crossAxsitCount,
        childAspectRatio: 1,
        itemBuilder: (context, index) => OrderCard(
          orders[index].id,
          orders[index].nameUser,
          orders[index].orderStatus,
          orders[index].money,
          medicen: orders[index].medicen,
        ),
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
