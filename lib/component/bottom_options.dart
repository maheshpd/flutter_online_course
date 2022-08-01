import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';

class BottomOption extends StatelessWidget {
  const BottomOption({Key? key, required this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  //Lets show shopping cart option in the center of bottom navigation bar using notch
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home,
                      color: getSelectedColor(1),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Home",
                      style:
                          TextStyle(fontSize: 13, color: getSelectedColor(1)),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      color: getSelectedColor(2),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "My Course",
                      style:
                          TextStyle(fontSize: 13, color: getSelectedColor(2)),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: getSelectedColor(3),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "wishlist",
                      style:
                          TextStyle(fontSize: 13, color: getSelectedColor(3)),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.people,
                      color: getSelectedColor(4),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 13,
                        color: getSelectedColor(4),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getSelectedColor(int optionIndex) {
    return (selectedIndex == optionIndex)
        ? kPrimaryColor
        : Colors.grey.shade800;
  }
}
