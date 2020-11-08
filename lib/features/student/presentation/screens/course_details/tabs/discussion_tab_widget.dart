part of 'package:smartlets/features/student/presentation/screens/course_details/course_detail_index_page.dart';

class DiscussionTabWidget extends StatefulWidget {
  static const String name = "Discussion";

  DiscussionTabWidget({Key key}) : super(key: key);

  @override
  _DiscussionTabWidgetState createState() => _DiscussionTabWidgetState();
}

class _DiscussionTabWidgetState extends State<DiscussionTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Here we shall have discussions"),
    );
  }
}
