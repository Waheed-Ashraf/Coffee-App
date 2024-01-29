import 'package:bloc/bloc.dart';


import 'package:coffee/featuers/HomeView/data/ProductsDataSource/products_data.dart';


import 'package:coffee/featuers/HomeView/data/product_model.dart';


import 'package:flutter/material.dart';


part 'shop_cart_state.dart';


class ShopCartCubit extends Cubit<ShopCartState> {

  ShopCartCubit() : super(ShopCartInitial());


  ProductModel? product;


  void addProduct(product) {

    shopCart.add(product);

    emit(ShopCartfill());

  }


  void removeProduct(product) {

    shopCart.remove(product);


    if (shopCart.isEmpty) {

      emit(ShopCartEmpty());

    } else {

      emit(ShopCartfill());

    }

  }

}

