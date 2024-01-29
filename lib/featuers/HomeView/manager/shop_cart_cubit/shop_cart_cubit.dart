import 'package:bloc/bloc.dart';


import 'package:coffee/featuers/HomeView/data/product_model.dart';


import 'package:flutter/material.dart';


part 'shop_cart_state.dart';


class ShopCartCubit extends Cubit<ShopCartState> {

  ShopCartCubit() : super(ShopCartInitial());


  ProductModel? product;


  List<ProductModel> shopCart = [];


  void checkList(shopCart) {

    if (shopCart.isEmpty) {

      emit(ShopCartEmpty());

    } else {

      emit(ShopCartfill());

    }

  }


  void addProduct(product) {

    shopCart.add(product);

  }


  void removeProduct(product) {

    shopCart.remove(product);

  }

}

