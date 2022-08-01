import 'package:flutter/material.dart';
import 'package:flutter_online_course/model/course_category.dart';

class CourseCategoryChangeNotifier extends ChangeNotifier {
  CourseCategory _category = CourseCategory.all;
  CourseCategory get category => _category;
  void changeCategory(CourseCategory category) {
    _category = category;
    notifyListeners();
  }
}
