import 'package:bloc/bloc.dart';

import 'package:coffee/featuers/HomeView/data/ProductsDataSource/products_data.dart';

import 'package:coffee/featuers/HomeView/data/product_model.dart';

import 'package:flutter/material.dart';

part 'shop_cart_state.dart';

class ShopCartCubit extends Cubit<ShopCartState> {
  ShopCartCubit() : super(ShopCartInitial());

  void CheckCart() {
    if (shopCart.isEmpty) {
      emit(ShopCartEmpty());
    } else {
      emit(ShopCartfill());
    }
  }

  void addProduct(ProductModel product) {
    if (product.quantity == 1) {
      shopCart.add(product);

      emit(ShopCartfill());
    } else {
      emit(ShopCartfill());
    }
  }

  void removeProduct(ProductModel product) {
    shopCart.remove(product);
    product.quantity = 0;

    if (shopCart.isEmpty) {
      emit(ShopCartEmpty());
    } else {
      emit(ShopCartfill());
    }
  }
}
