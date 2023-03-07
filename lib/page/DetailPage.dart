import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project/models/Product.dart';

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: const Text(
          'DETAIL',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: IconButton(
          icon: const Icon(Icons.play_arrow),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Flexible(
          child: Column(
            children: [
              Container(
                width: 350,
                height: 350,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(product.productImage),
                  ),
                ),
              ),
              Text(
                product.productName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(product.productModel),
              Text(product.productRelease),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  product.productDescription,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
