import 'package:coffee_shop/models/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile(
      {super.key,
      required this.coffeeModel,
      required this.onPressed,
      required this.icon});
  final CoffeeModel coffeeModel;
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(coffeeModel.imagePath),
        subtitle: Text(coffeeModel.price.toString()),
        title: Text(coffeeModel.name),
        trailing: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.secondary),
          child: IconButton(
            icon: Icon(icon),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
