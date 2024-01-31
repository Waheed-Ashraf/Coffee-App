import 'package:coffee/core/text_style.dart';
import 'package:coffee/core/widgets/grediant_button.dart';
import 'package:coffee/core/widgets/snak_bar.dart';
import 'package:coffee/featuers/HomeView/data/ProductsDataSource/products_data.dart';
import 'package:coffee/featuers/HomeView/manager/shop_cart_cubit/shop_cart_cubit.dart';
import 'package:coffee/featuers/HomeView/view/widgets/added_product_Item.dart';
import 'package:coffee/featuers/HomeView/view/widgets/shop_cart_empty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCartBody extends StatelessWidget {
  const ShopCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCartCubit, ShopCartState>(builder: (context, state) {
      if (state is ShopCartEmpty) {
        return const ShopCartIsImptyBody();
      } else {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Text(
                'Your Cart : ',
                style: Styles.titleStyle18.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: shopCart.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: Key(shopCart[index].id.toString()),
                        background: Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Container(
                            // color: Colors.red,
                            height: 16,
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(
                              right: 16,
                            ),
                            child: Icon(
                              Icons.delete,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                          ),
                        ),
                        onDismissed: (direction) {
                          showSnackBar(context,
                              color: Colors.red, message: 'Product deleted');
                          BlocProvider.of<ShopCartCubit>(context)
                              .removeProduct(shopCart[index]);
                        },
                        child: AddedProductItem(
                          product: shopCart[index],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 24,
              ),
              GradientButton(
                onPressed: () {},
                text: 'Pay Now',
              ),
              const SizedBox(
                height: 46,
              ),
            ],
          ),
        );
      }
    });
  }
}
