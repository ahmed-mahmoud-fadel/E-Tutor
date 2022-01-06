// ignore_for_file: file_names

import 'dart:collection';

import 'package:etutor_project/Course.dart';
import 'package:flutter/material.dart';
import 'package:etutor_project/global.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:etutor_project/dummyData.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _HomeState() {
    innitCourses();
    courseMap = HashMap.from({
      'English': Course.courseList[0],
      'Science': Course.courseList[1],
      'Chemistry': Course.courseList[2]
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: MY_BACKGROUND_COLOR,
            body: Padding(
              padding: myPadding,
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 0.1.sh,
                  ),

                  //Title Label
                  DecoratedBox(
                    child: SizedBox(
                      width: .3.sw,
                      height: .3.sw,
                      child: Image.asset('assets/logo.png'),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.sp),
                      color: Color(0xFF406882),
                    ),

                  ),

                  SizedBox(
                    height: 0.2.sh,
                  ),

                  //Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Teacher Button
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/TeacherMenu');
                        },
                        padding: EdgeInsets.zero,
                        hoverColor: Colors.redAccent[100],
                        highlightColor: Colors.redAccent[500],
                        splashColor: Colors.red,
                        iconSize: 0.2.sw,
                        icon: Image.asset('assets/teacher.png'),
                      ),

                      SizedBox(
                        width: 0.2.sw,
                        // width: 100,
                      ),

                      //Student Button
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/StudentLesson');
                        },
                        padding: EdgeInsets.zero,
                        hoverColor: Colors.lightBlueAccent[100],
                        highlightColor: Colors.lightBlueAccent[500],
                        splashColor: Colors.lightBlue,
                        icon: Image.asset('assets/student.png'),
                        iconSize: 0.2.sw,
                      )
                    ],
                  )
                ],
              )),
            )));
  }
}
