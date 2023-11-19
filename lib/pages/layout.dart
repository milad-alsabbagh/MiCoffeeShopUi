import 'package:coffee_shop/cubit/cubit.dart';
import 'package:coffee_shop/cubit/states.dart';
import 'package:coffee_shop/pages/cart_page.dart';
import 'package:coffee_shop/pages/shop_page.dart';
import 'package:coffee_shop/widgets/my_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Layout extends StatelessWidget {
  Layout({super.key});
  final List<Widget> pages = [const ShopPage(), const CartPage()];
  CoffeeShopCubit cubit(context) => BlocProvider.of(context);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoffeeShopCubit, CoffeeShopStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: pages[cubit(context).currentIndex],
          bottomNavigationBar: MyNavBar(
            onTapChanged: (index) {
              cubit(context).changePage(index);
            },
          ),
        );
      },
    );
  }
}
