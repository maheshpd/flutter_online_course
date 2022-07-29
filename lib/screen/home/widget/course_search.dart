import 'package:flutter/material.dart';

class CourseSearch extends StatelessWidget {
  const CourseSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: "Search for course",
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.search,
            size: 20,
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        fillColor: Colors.white,
      ),
    );
  }
}
