import 'package:coffee_shop/pages/layout.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  Lottie.asset('assets/lottie/animation.json', repeat: false),
            ),
          ),
          Text(
            'Start your Day with caffine Energy',
            style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Layout()));
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.primary),
              child: const Icon(Icons.arrow_forward),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text('Milad Alsabbagh',
                style: GoogleFonts.charm(
                  fontSize: 28,
                )),
          )
        ],
      ),
    );
  }
}
