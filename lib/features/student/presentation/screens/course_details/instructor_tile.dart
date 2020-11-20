part of 'package:smartlets/features/student/presentation/screens/course_details/course_detail_index_page.dart';

class _InstructorTile extends StatelessWidget {
  final User user;

  _InstructorTile({Key key, User user})
      : user = user ?? getIt<AuthFacade>().currentUser.getOrElse(() => null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: App.height * 0.015, horizontal: App.width * 0.05),
          child: Row(
            children: [
              Flexible(
                child: ExtendedImage.network(
                  user?.photoURL,
                  fit: BoxFit.fill,
                  height: App.height * 0.06,
                  shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(100.0),
                  clipBehavior: Clip.antiAlias,
                  clearMemoryCacheIfFailed: false,
                  handleLoadingProgress: true,
                  retries: 999899,
                  isAntiAlias: true,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.loading:
                        return CircularProgressBar.adaptive(
                          width: App.width * 0.06,
                          height: App.width * 0.06,
                          strokeWidth: 3,
                          radius: 12,
                        );
                      case LoadState.completed:
                        return state.completedWidget;
                      case LoadState.failed:
                        return Center(child: Icon(Icons.error, color: Theme.of(context).accentColor));
                      default:
                        return Center(child: Icon(Icons.error, color: Theme.of(context).accentColor));
                    }
                  },
                ),
              ),
              //
              HorizontalSpace(width: App.height * 0.02),
              //
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      child: AutoSizeText(
                        "Instructor",
                        minFontSize: 18.0,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    //
                    VerticalSpace(height: App.height * 0.005),
                    //
                    Visibility(
                      visible: !user.displayName.getOrNull.isNullOrBlank,
                      child: AutoSizeText("${user?.displayName?.getOrEmpty}", style: TextStyle(fontSize: 16.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
