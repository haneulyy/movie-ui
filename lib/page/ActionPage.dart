import 'package:flutter/material.dart';
import 'package:project/Widgets/ProductWidget.dart';

import '../data/home_page_data.dart';

class ActionPage extends StatelessWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: true,
      itemCount: ActionData.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.4,
      ),
      itemBuilder: (context, index) {
        var data = ActionData[index];
        return ProductWidget(
          productImage: data.productImage,
          productModel: data.productModel,
          productName: data.productName,
          productRelease: data.productRelease,
          productDescription: data.productDescription,
        );
      },
    );
  }
}
