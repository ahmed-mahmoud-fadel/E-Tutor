// ignore_for_file: file_names

import 'dart:collection';

import 'package:etutor_project/Lesson.dart';

class Course {
  List<Lesson> lessonList;
  static List<Course> courseList = [];

  Course({required this.lessonList}) {
    courseList.add(this);
  }
}

List<String> courseNames =['English', 'Science', 'Chemistry'];
HashMap<String, Course>? courseMap;
