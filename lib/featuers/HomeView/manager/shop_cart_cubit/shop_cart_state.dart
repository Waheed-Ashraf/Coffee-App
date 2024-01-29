part of 'shop_cart_cubit.dart';


@immutable

sealed class ShopCartState {}


final class ShopCartInitial extends ShopCartState {}


final class ShopCartEmpty extends ShopCartState {}


final class ShopCartfill extends ShopCartState {}

