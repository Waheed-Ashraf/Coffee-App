import 'package:coffee/core/widgets/snak_bar.dart';
import 'package:coffee/featuers/HomeView/data/ProductsDataSource/products_data.dart';
import 'package:coffee/featuers/HomeView/manager/shop_cart_cubit/shop_cart_cubit.dart';
import 'package:coffee/featuers/HomeView/view/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            onPressed: () {
              showSnackBar(context,
                  color: Colors.green, message: 'Product Added');
              productsData[index].quantity += 1;
              BlocProvider.of<ShopCartCubit>(context)
                  .addProduct(productsData[index]);
            },
          );
        });
  }
}
