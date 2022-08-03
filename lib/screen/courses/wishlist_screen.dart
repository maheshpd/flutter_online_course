import 'package:flutter/material.dart';
import 'package:flutter_online_course/component/bottom_options.dart';
import 'package:flutter_online_course/component/shopping_cart_option.dart';
import 'package:flutter_online_course/screen/courses/widget/wishlist.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Wishlist",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade900),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Lets show wishlist here, so creating new widget for this
            const Wishlist(),
          ],
        ),
      )),
      floatingActionButton: const ShoppingCartOption(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomOption(selectedIndex: 3),
    );
  }
}
