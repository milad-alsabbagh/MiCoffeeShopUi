import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key, required this.onTapChanged});
  final void Function(int) onTapChanged;

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: onTapChanged,
      mainAxisAlignment: MainAxisAlignment.center,
      activeColor: Theme.of(context).colorScheme.inversePrimary,
      color: Theme.of(context).colorScheme.secondary,
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_cart,
          text: 'Cart',
        ),
      ],
    );
  }
}
