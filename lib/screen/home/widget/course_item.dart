import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';
import 'package:flutter_online_course/model/course.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key, required this.course}) : super(key: key);
  final Course course;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(course.thumbnailUrl),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Text(
                    course.title,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        color: kBlueColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        course.createdBy,
                        style: const TextStyle(
                          fontSize: 12,
                          color: kBlueColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children:  [
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: kRatingColor,
                          ),
                          Text('${course.rate}')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
