import 'package:flutter/material.dart';
import 'package:project/Widgets/ProductWidget.dart';
import '../data/home_page_data.dart';
import '../page/RomancePage.dart';
import '../page/ActionPage.dart';
import '../page/MoviePage.dart';

class HomePage extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      bottom: const TabBar(
        labelPadding: EdgeInsets.all(15),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: Colors.white,
        labelColor: Colors.white,
        tabs: [
          Text("전체"),
          Text("로맨스"),
          Text("액션"),
          Text("기본"),
        ],
      ),
      centerTitle: true,
      backgroundColor: Colors.red,
      elevation: 0.0,
      title: Column(
        children: const [
          Text(
            "MOVIE",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            ListView(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  primary: true,
                  itemCount: ProductData.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.4,
                  ),
                  itemBuilder: (context, index) {
                    var data = ProductData[index];
                    return ProductWidget(
                      productImage: data.productImage,
                      productModel: data.productModel,
                      productName: data.productName,
                      productRelease: data.productRelease,
                      productDescription: data.productDescription,
                    );
                  },
                ),
              ],
            ),
            const RomancePage(),
            const ActionPage(),
            const MoviePage(),
          ],
        ),
      ),
    );
  }
}
