// ignore_for_file: file_names

import 'package:etutor_project/Course.dart';
import 'package:etutor_project/Lesson.dart';
import 'package:etutor_project/Question.dart';

List<Course> innitCourses() {
  return [
    Course(lessonList: innitLessons(1)),
    Course(lessonList: innitLessons(2)),
    Course(lessonList: innitLessons(3))
  ];
}

List<Lesson> innitLessons(int courseNum) {
  if (courseNum == 1) {
    return [
      Lesson(
          content: 'The present perfect simple expresses an action that is still going on or that stopped'
              ' recently,\n but has an influence on the present. \nIt puts emphasis on the result.'
              '\nI / you / we / they	I have spoken.	I have not spoken.	Have I spoken?'
              '\nhe / she / it	He has spoken.	He has not spoken.	Has he spoken?',
          title: 'Present Perfect',
          questionList: innitQuestions(3)),
      Lesson(
          content: 'The present perfect simple expresses an action that is still going on or that stopped'
              ' recently,\n but has an influence on the present. \nIt puts emphasis on the result.'
              '\nI / you / we / they	I have spoken.	I have not spoken.	Have I spoken?'
              '\nhe / she / it	He has spoken.	He has not spoken.	Has he spoken?',
          title: 'Past Perfect',
          questionList: innitQuestions(3)),
      Lesson(
          content: 'The present perfect simple expresses an action that is still going on or that stopped'
              ' recently,\n but has an influence on the present. \nIt puts emphasis on the result.'
              '\nI / you / we / they	I have spoken.	I have not spoken.	Have I spoken?'
              '\nhe / she / it	He has spoken.	He has not spoken.	Has he spoken?',
          title: 'Future Simple',
          questionList: innitQuestions(3)),
    ];
  } else if (courseNum == 2) {
    return [
      Lesson(
          content: 'Students make a cell model to learn about the functions and interactions of a cell’s organelles.\n'
              'In one option, students use materials provided to assemble a cell model as each group takes charge of one organelle'
              'and interactively',
          title: 'Earth Science',
          questionList: innitQuestions(3)),
      Lesson(
          content: 'Students make a cell model to learn about the functions and interactions of a cell’s organelles.\n'
              'In one option, students use materials provided to assemble a cell model as each group takes charge of one organelle'
              'and interactively',
          title: 'Water Science',
          questionList: innitQuestions(3)),
      Lesson(
          content: 'Students make a cell model to learn about the functions and interactions of a cell’s organelles.\n'
              'In one option, students use materials provided to assemble a cell model as each group takes charge of one organelle'
              'and interactively',
          title: 'Sound Science',
          questionList: innitQuestions(3)),
    ];
  } else if (courseNum == 3) {
    return [
      Lesson(
          content: 'Students make a cell model to learn about the functions and interactions of a cell’s organelles.'
              'In one option, students use materials provided to assemble a cell model as each group takes charge'
              'of one organelle and interactively',
          title: 'Organic Chemistry',
          questionList: innitQuestions(3)),
      Lesson(
          content: 'Students make a cell model to learn about the functions and interactions of a cell’s organelles.'
              'In one option, students use materials provided to assemble a cell model as each group takes charge'
              'of one organelle and interactively',
          title: 'Electric Chemistry',
          questionList: innitQuestions(3)),
      Lesson(
          content: 'Students make a cell model to learn about the functions and interactions of a cell’s organelles.'
              'In one option, students use materials provided to assemble a cell model as each group takes charge'
              'of one organelle and interactively',
          title: 'natural Chemistry',
          questionList: innitQuestions(3)),
    ];
  } else {
    return [];
  }
}

List<dynamic> innitQuestions(int n) {
  List<dynamic> questions = [];
  for (int i = 0; i < n; i++) {
    questions.add(WrittenQuestion(question: 'Question demo?', answer: 'Answer demo'));
  }
  return questions;
}
