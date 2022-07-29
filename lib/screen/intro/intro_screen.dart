import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';
import 'package:flutter_online_course/utils/route_name.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/intro/intro.png"),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Grow Your Skills",
            style: TextStyle(fontSize: 25, color: Colors.grey.shade900),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Choose your favorite course & start learning",
            style: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              //Now Intro screen is ready. Lets create course home screen
              //and open it from getting started button callback handler
              Navigator.pushNamed(context, RouteNames.courseHome);
            },
            style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Text(
                "Getting Started",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
