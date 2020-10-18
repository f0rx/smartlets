import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

part 'package:smartlets/features/student/presentation/widgets/home_category_widget.dart';

class StudentHomeIndexPage extends StatelessWidget {
  final List<CourseCategory> _categories = CourseCategory.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isBoxScrolled) => [],
        physics: BouncingScrollPhysics(),
        controller: ScrollController(),
        scrollDirection: Axis.vertical,
        // dragStartBehavior: DragStartBehavior.start,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                VerticalSpace(height: App.height * 0.1),
                //
                const AutoSizeText(
                  "What do you want to learn today?",
                  style: TextStyle(fontWeight: FontWeight.w600),
                  minFontSize: 24,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                //
                VerticalSpace(height: App.height * 0.04),
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
                  child: Material(
                    elevation: 1.0,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    type: MaterialType.card,
                    child: TextFormField(
                      maxLines: 1,
                      enableSuggestions: true,
                      cursorColor: App.theme.accentColor,
                      enableInteractiveSelection: true,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.none,
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        hintText: "Search",
                        contentPadding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 14.0),
                        prefixIcon: const Icon(AppIcons.search_filled, size: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.accentColor),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                //
                VerticalSpace(height: App.height * 0.04),
                //
                Align(
                  alignment: Alignment.centerLeft,
                  child: const AutoSizeText(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.w600),
                    minFontSize: 18,
                    textAlign: TextAlign.left,
                  ),
                ),
                //
                Wrap(
                  direction: Axis.horizontal,
                  runSpacing: App.height * 0.015,
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: _categories.map((category) => HomeCategoryWidget(category: category)).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
