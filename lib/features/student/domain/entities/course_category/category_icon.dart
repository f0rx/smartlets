import 'package:flutter/foundation.dart';
import 'package:smartlets/utils/assets.dart';

class CategoryIcon {
  final String name;
  final String fullPath;
  final String absolutePath;
  final String mimeType;

  CategoryIcon({
    @required this.name,
    String fullPath,
    this.absolutePath = AppAssets.STUDENT_SVG_DIR,
    this.mimeType = "svg",
  }) : fullPath = fullPath ?? "$absolutePath/$name.$mimeType";
}
