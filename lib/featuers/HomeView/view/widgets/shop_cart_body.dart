import 'package:coffee/core/asset_data.dart';
import 'package:coffee/core/text_style.dart';
import 'package:coffee/core/widgets/grediant_button.dart';
import 'package:coffee/featuers/HomeView/data/ProductsDataSource/products_data.dart';
import 'package:coffee/featuers/HomeView/manager/shop_cart_cubit/shop_cart_cubit.dart';
import 'package:coffee/featuers/HomeView/view/widgets/added_product_Item.dart';
import 'package:coffee/featuers/HomeView/view/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ShopCartBody extends StatelessWidget {
  const ShopCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCartCubit, ShopCartState>(builder: (context, state) {
      if (state is ShopCartEmpty) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(AssetsData.shopCortImage),
              const SizedBox(
                height: 16,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text('Your cart is empty..'))
            ],
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Your Cart : ',
                style: Styles.titleStyle18,
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
                        onDismissed: (direction) {
                          BlocProvider.of<ShopCartCubit>(context)
                              .removeProduct(shopCart[index]);
                        },
                        child: AddedProductItem(
                            product: shopCart[index],
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              BlocProvider.of<ShopCartCubit>(context)
                                  .removeProduct(shopCart[index]);
                            }),
                      );
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              GradientButton(
                onPressed: () {},
                text: 'Pay Now',
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        );
      }
    });
  }
}
