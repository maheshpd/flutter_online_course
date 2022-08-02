import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';
import 'package:flutter_online_course/utils/util.dart';

class ShoppingCartOption extends StatelessWidget {
  const ShoppingCartOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      onPressed: () {
        //We will open shopping cart screen
        Util.openShoppingCart(context);
      },
      child: const Icon(Icons.shopping_cart),
    );
  }
}
