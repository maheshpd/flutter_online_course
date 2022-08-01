import 'package:flutter_online_course/model/course_category.dart';
import 'package:flutter_online_course/model/section.dart';

class Course {
  final String _id;
  final String _title;
  final String _thumbnailUrl;
  final String _description;
  final String _createdBy;
  final String _createdDate;
  final double _rate;
  bool _isFavorite;
  final double _price;
  final CourseCategory _courseCategory;
  final String _duration;
  final int _lessonNo;
  final List<Section> _sections;

  Course(
      this._id,
      this._title,
      this._thumbnailUrl,
      this._description,
      this._createdBy,
      this._createdDate,
      this._rate,
      this._isFavorite,
      this._price,
      this._courseCategory,
      this._duration,
      this._lessonNo,
      this._sections);

  List<Section> get sections => _sections;

  int get lessonNo => _lessonNo;

  String get duration => _duration;

  CourseCategory get courseCategory => _courseCategory;

  double get price => _price;

  bool get isFavorite => _isFavorite;

  double get rate => _rate;

  String get createdDate => _createdDate;

  String get createdBy => _createdBy;

  String get description => _description;

  String get thumbnailUrl => _thumbnailUrl;

  String get title => _title;

  String get id => _id;

  set isFavorite(bool value) {
    _isFavorite = value;
  }
}
