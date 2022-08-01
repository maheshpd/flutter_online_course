import 'package:flutter/material.dart';
import 'package:flutter_online_course/notifier/course_category_change_notifier.dart';
import 'package:flutter_online_course/screen/home/widget/category_list.dart';
import 'package:flutter_online_course/screen/home/widget/course_list.dart';
import 'package:provider/provider.dart';

class CategoryCourseList extends StatelessWidget {
  const CategoryCourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CourseCategoryChangeNotifier(),
      child: Column(
        children: const [
          CategoryList(),
          CourseList(),
        ],
      ),
    );
  }
}
