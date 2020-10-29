part of 'package:smartlets/features/student/presentation/screens/course_details/course_detail_index_page.dart';

class AboutTabWidget extends StatelessWidget {
  static const String name = "About";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.width * 0.04, vertical: App.height * 0.02),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              "About this course",
              minFontSize: 20.0,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            //
            VerticalSpace(height: App.height * 0.01),
            //
            AutoSizeText(
              "Learn how to design a website that stands out from the crowd.",
              minFontSize: 16.0,
            ),
            //
            VerticalSpace(height: App.height * 0.02),
            //
            AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Skill level: ", style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "All levels"),
                ],
              ),
              minFontSize: 16.0,
            ),
            //
            VerticalSpace(height: App.height * 0.01),
            //
            AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Students: ", style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "500"),
                ],
              ),
              minFontSize: 16.0,
            ),
            //
            VerticalSpace(height: App.height * 0.01),
            //
            AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Language: ", style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "English"),
                ],
              ),
              minFontSize: 16.0,
            ),
            //
            VerticalSpace(height: App.height * 0.01),
            //
            AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Total time: ", style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "42 hours"),
                ],
              ),
              minFontSize: 16.0,
            ),
            //
            VerticalSpace(height: App.height * 0.01),
            //
            AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Lessons: ", style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "31"),
                ],
              ),
              minFontSize: 16.0,
            ),
            //
            VerticalSpace(height: App.height * 0.03),
            //
            AutoSizeText(
              "Get Smartlets certificate by completing the entire course.",
              minFontSize: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
