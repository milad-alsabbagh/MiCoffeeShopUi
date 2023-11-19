import 'package:coffee_shop/cubit/cubit.dart';
import 'package:coffee_shop/cubit/states.dart';
import 'package:coffee_shop/widgets/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
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
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 25.0),
                child: Column(
                  children: [
                    Text(
                      'Your Cart',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: cubit(context).cartList.length,
                            itemBuilder: (context, index) {
                              return CoffeeTile(
                                icon: Icons.delete,
                                coffeeModel: cubit(context).cartList[index],
                                onPressed: () {
                                  String item =
                                      cubit(context).cartList[index].name;
                                  cubit(context).removeFromCart(
                                      cubit(context).cartList[index]);
                                  Fluttertoast.showToast(
                                    msg: '$item Removed from your cart',
                                    backgroundColor:
                                        Theme.of(context).colorScheme.primary,
                                  );
                                },
                              );
                            })),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Center(
                          child: Text(
                        'Order Now',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
