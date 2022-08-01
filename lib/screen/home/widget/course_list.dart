import 'package:flutter/material.dart';
import 'package:flutter_online_course/data_provider/course_data_provider.dart';
import 'package:flutter_online_course/model/course.dart';
import 'package:flutter_online_course/model/course_category.dart';
import 'package:flutter_online_course/notifier/course_category_change_notifier.dart';
import 'package:flutter_online_course/screen/home/widget/course_item.dart';
import 'package:provider/provider.dart';

class CourseList extends StatelessWidget {
  const CourseList({Key? key}) : super(key: key);

  //Now we have shown all courses, lets change course list based on the selected category
  //For that we will be using provider pattern, lets add provider package dependency

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: CourseDataProvider.courseList.map(
        (course) {
          return CourseItem(course: course);
        },
      ).toList(),
    );
  }

  List<Course> getCourseList(BuildContext context) {
    //Lets get selected category using provider
    var category = Provider.of<CourseCategoryChangeNotifier>(context).category;

    if (category == CourseCategory.all) {
      return CourseDataProvider.courseList;
    }

    return CourseDataProvider.courseList
        .where((course) => course.courseCategory == category)
        .toList();
  }
}
