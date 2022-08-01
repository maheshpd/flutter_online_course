import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';
import 'package:flutter_online_course/model/course_category.dart';
import 'package:flutter_online_course/notifier/course_category_change_notifier.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get selected category using provider
    var category = Provider.of<CourseCategoryChangeNotifier>(context).category;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800),
        ),
        const SizedBox(
          height: 10,
        ),

        //Lets show category list in horizontal list
        SizedBox(
          height: 35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CourseCategory.values.length,
            itemBuilder: (context, index) {
              CourseCategory courseCategory = CourseCategory.values[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {
                    Provider.of<CourseCategoryChangeNotifier>(context,
                            listen: false)
                        .changeCategory(courseCategory);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: category == courseCategory
                            ? kPrimaryColor
                            : Colors.white,
                        border: Border.all(color: Colors.grey.shade900)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        courseCategory.title,
                        style:  TextStyle(
                          fontSize: 15,
                          color: category == courseCategory
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
