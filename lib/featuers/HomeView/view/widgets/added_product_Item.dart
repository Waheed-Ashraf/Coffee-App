import 'package:coffee/core/text_style.dart';
import 'package:coffee/featuers/HomeView/data/product_model.dart';
import 'package:flutter/material.dart';

class AddedProductItem extends StatelessWidget {
  final ProductModel product;

  const AddedProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: ListTile(
            leading: Image.asset(
              product.productPicture,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            title: Text(
              product.title,
              style: Styles.titleStyle18,
            ),
            subtitle: Text(
              '${product.price * product.quantity}' r" $",
              style: Styles.subTitleStyle16,
            ),
            trailing: Text(
              "${product.quantity}",
              style: Styles.subTitleStyle16,
            ),
          ),
        ),
      ),
    );
  }
}
