import 'package:coffee/core/text_style.dart';
import 'package:coffee/featuers/HomeView/data/product_model.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  final Icon icon;

  const ProductItem({super.key, required this.product, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ListTile(
                title: Text(
                  product.title,
                  style: Styles.titleStyle18,
                ),
                subtitle: Text(
                  '${product.price}' r" $",
                  style: Styles.subTitleStyle16,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: icon,
                ),
              ),
            ),
          ),
          Positioned(
            top: -35,
            left: 170,
            child: Image.asset(
              product.productPicture,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
