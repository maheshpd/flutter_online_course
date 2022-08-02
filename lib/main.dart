import 'package:flutter/material.dart';
import 'package:flutter_online_course/arguments/course_argument.dart';
import 'package:flutter_online_course/details/course_details.dart';
import 'package:flutter_online_course/screen/home/course_home.dart';
import 'package:flutter_online_course/screen/intro/intro_screen.dart';
import 'package:flutter_online_course/shopping/shopping_cart_screen.dart';
import 'package:flutter_online_course/utils/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        RouteNames.intro: (context) => const IntroScreen(),
        RouteNames.courseHome: (context) => const CourseHome(),
        RouteNames.shoppingCart: (context) => const ShoppingCartScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == RouteNames.courseDetails) {
          //Lets create course argument to pass to course details screen
          final args = settings.arguments as CourseArgument;
          return MaterialPageRoute(
              builder: (context) => CourseDetails(course: args.course));
        }
      },
    );
  }
}
