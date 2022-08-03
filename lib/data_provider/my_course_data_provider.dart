import 'package:flutter_online_course/model/course.dart';
import 'package:flutter_online_course/model/my_course.dart';

class MyCourseDataProvider {
  static final List<MyCourse> _myCourse = [];

  static void addCourse(Course course) {
    _myCourse.add(MyCourse(course));
  }

  static void addAllCourse(List<Course> courses) {
    for (var course in courses) {
      _myCourse.add(MyCourse(course));
    }
  }

  static List<MyCourse> get myCourse => _myCourse;
}
