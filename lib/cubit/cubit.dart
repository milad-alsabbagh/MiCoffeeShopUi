import 'package:coffee_shop/cubit/states.dart';
import 'package:coffee_shop/models/coffee_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeShopCubit extends Cubit<CoffeeShopStates> {
  CoffeeShopCubit() : super(InitialState());

  int currentIndex = 0;
  void changePage(int index) {
    currentIndex = index;
    emit(ChangePageState());
  }

  List<CoffeeModel> cartList = [];
  void addToCart(CoffeeModel coffeeModel) {
    cartList.add(coffeeModel);
    emit(AddToCartState());
  }

  void removeFromCart(CoffeeModel coffeeModel) {
    cartList.remove(coffeeModel);
    emit(RemoveFromCartState());
  }
}
