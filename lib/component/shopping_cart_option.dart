import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';

class ShoppingCartOption extends StatelessWidget {
  const ShoppingCartOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          //We will open shopping cart screen
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
