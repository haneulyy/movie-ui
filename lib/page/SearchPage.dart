import 'package:flutter/material.dart';
import '../Widgets/ProductWidget.dart';
import '../data/home_page_data.dart';
import '../models/Product.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Product> product_list = List.from(ProductData);

  void updateList(String value) {
    setState(() {
      product_list = ProductData.where((element) =>
              element.productName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          title: Text(
            'SEARCH',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) => updateList(value),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              hintText: "영화 제목을 입력하세요.",
              suffixIcon: const Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: product_list.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.4,
            ),
            itemBuilder: (context, index) => ProductWidget(
              productImage: product_list[index].productImage,
              productModel: product_list[index].productModel,
              productName: product_list[index].productName,
              productRelease: product_list[index].productRelease,
              productDescription: product_list[index].productDescription,
            ),
          ),
        ),
      ],
    );
  }
}
