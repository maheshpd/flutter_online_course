import 'package:flutter_online_course/model/course.dart';

class ShoppingCartDataProvider {
  static final List<Course> _shoppingCartCourseList = [];

  static List<Course> get shoppingCartCourseList => _shoppingCartCourseList;

  static void addCourse(Course course) {
    _shoppingCartCourseList.add(course);
  }

  static void addAllCourses(List<Course> course) {
    _shoppingCartCourseList.addAll(course);
  }

  static void clearCart() {
    _shoppingCartCourseList.clear();
  }

  static void deleteCourse(Course course) {
    _shoppingCartCourseList.remove(course);
  }
}
