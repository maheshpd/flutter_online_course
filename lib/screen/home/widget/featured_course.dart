import 'package:flutter/material.dart';
import 'package:flutter_online_course/data_provider/course_data_provider.dart';
import 'package:flutter_online_course/model/course.dart';
import 'package:flutter_online_course/screen/home/widget/course_item.dart';

class FeaturedCourse extends StatelessWidget {
  const FeaturedCourse({Key? key}) : super(key: key);

  //Lets create sample data for featured product

  @override
  Widget build(BuildContext context) {
    List<Course> featuredCourseList = [
      CourseDataProvider.courseList[9],
      CourseDataProvider.courseList[0],
      CourseDataProvider.courseList[1],
      CourseDataProvider.courseList[2],
      CourseDataProvider.courseList[10],
      CourseDataProvider.courseList[5],
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured Courses",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "See All",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        //Lets show featured course in horizontal listview
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredCourseList.length,
              itemBuilder: (context, index) {
                Course course = featuredCourseList[index];
                return CourseItem(course: course);
              }),
        )
      ],
    );
  }
}
