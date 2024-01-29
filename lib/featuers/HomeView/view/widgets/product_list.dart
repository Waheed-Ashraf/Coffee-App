import 'package:coffee/featuers/HomeView/data/ProductsDataSource/products_data.dart';
import 'package:coffee/featuers/HomeView/view/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: productsData.length,
        itemBuilder: (context, index) {
          return ProductItem(
            product: productsData[index],
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          );
        });
  }
}
