part of 'package:smartlets/features/student/presentation/screens/course_details/course_detail_index_page.dart';

class LessonsTabWidget extends StatefulWidget {
  static const String name = "Lessons";

  LessonsTabWidget({Key key}) : super(key: key);

  @override
  _LessonsTabWidgetState createState() => _LessonsTabWidgetState();
}

class _LessonsTabWidgetState extends State<LessonsTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Lessons for the boys"),
    );
  }
}
