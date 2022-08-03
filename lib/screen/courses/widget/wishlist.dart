import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';
import 'package:flutter_online_course/data_provider/course_data_provider.dart';
import 'package:flutter_online_course/model/course.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    List<Course> courseList = getCourseList(context);
    return ListView.builder(
        shrinkWrap: true,
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          Course course = courseList[index];
          //Lets create another function to create list item & call here
          return getListItem(course);
        });
  }

  //Lets create function to filter list based on isFavorite flag
  List<Course> getCourseList(BuildContext context) {
    return CourseDataProvider.courseList
        .where((course) => course.isFavorite)
        .toList();
  }

  Widget getListItem(Course course) {
    return Card(
      child: ListTile(
        leading: Image.asset(course.thumbnailUrl),
        //Seems no data in wishlist, lets add wishlist items first
        //I will add bottom navigation bar here, so we can navigate to course screen
        //to add in wishlist
        title: Text(
          course.title,
          maxLines: 2,
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey.shade800,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "By ${course.createdBy}",
              style: const TextStyle(color: kBlueColor, fontSize: 13),
            ),
            Row(
              children: [
                Text(
                  course.duration,
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.grey,
                  child: Container(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "${course.lessonNo} Lessons",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.grey,
                  child: Container(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("${course.rate}")
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "\$${course.price}",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        course.isFavorite = false;
                      });
                    },
                    child: const Icon(Icons.delete))
              ],
            )
          ],
        ),
      ),
    );
  }
}
