import 'package:coffee_shop/cubit/cubit.dart';
import 'package:coffee_shop/cubit/states.dart';
import 'package:coffee_shop/lists/coffee_list.dart';
import 'package:coffee_shop/widgets/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
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
                      'What to drink today',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: coffeeList.length,
                            itemBuilder: (context, index) {
                              return CoffeeTile(
                                icon: Icons.add,
                                coffeeModel: coffeeList[index],
                                onPressed: () {
                                  cubit(context).addToCart(coffeeList[index]);
                                  Fluttertoast.showToast(
                                    msg:
                                        '${coffeeList[index].name} added to your Cart Enjoy',
                                    backgroundColor:
                                        Theme.of(context).colorScheme.primary,
                                  );
                                },
                              );
                            })),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
