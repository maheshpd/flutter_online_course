import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome John",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Let's learn something new today!",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: kOptionColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Icon(Icons.notifications, color: Colors.white),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: kOptionColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
