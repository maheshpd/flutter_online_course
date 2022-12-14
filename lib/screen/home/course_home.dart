import 'package:flutter/material.dart';
import 'package:flutter_online_course/component/bottom_options.dart';
import 'package:flutter_online_course/component/shopping_cart_option.dart';
import 'package:flutter_online_course/constants.dart';
import 'package:flutter_online_course/screen/home/widget/category_course_list.dart';
import 'package:flutter_online_course/screen/home/widget/category_list.dart';
import 'package:flutter_online_course/screen/home/widget/course_list.dart';
import 'package:flutter_online_course/screen/home/widget/course_search.dart';
import 'package:flutter_online_course/screen/home/widget/featured_course.dart';
import 'package:flutter_online_course/screen/home/widget/header.dart';
import 'package:flutter_online_course/screen/home/widget/offer.dart';

class CourseHome extends StatelessWidget {
  const CourseHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Lets create header with user name
              Container(
                height: 170,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Header(),
                      SizedBox(
                        height: 20,
                      ),
                      CourseSearch(),
                    ],
                  ),
                ),
              ),

              //Offer module
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Offers(),
                    const FeaturedCourse(),
                    const CategoryCourseList()
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: const ShoppingCartOption(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomOption(
          selectedIndex: 1,
        ),
      ),
    );
  }
}
