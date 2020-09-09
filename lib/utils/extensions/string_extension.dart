import 'package:intl/intl.dart';

extension StringX on String {
  /// Capitalize only first letter in string
  ///
  /// Example: your name => Your name
  String capitalizeFirst() => "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";

  /// Checks if String contains b (Treating or interpreting upper- and lowercase letters as being the same).
  bool caseInsensitiveContains(String b) => this.toLowerCase().contains(b.toLowerCase());

  /// Checks if String contains b or b contains String (Treating or interpreting upper- and lowercase letters as being the same).
  bool containsAny(String b) {
    String lowA = this.toLowerCase();
    String lowB = b.toLowerCase();
    return lowA.contains(lowB) || lowB.contains(lowA);
  }

  /// Erase occurrence of strings matching Patterns
  String erase(List<Pattern> patterns, {bool recursive = true, Direction position = Direction.left, int startIndex = 0}) {
    String init = this;
    patterns.forEach((pattern) {
      if (pattern == null || pattern.toString().isEmpty) return;
      if (this.caseInsensitiveContains(pattern)) {
        if (recursive) {
          init = this.replaceAll(pattern, "");
        } else {
          switch (position) {
            case Direction.left:
              init = this.replaceFirst(RegExp(pattern), "", this.indexOf(pattern));
              break;
            case Direction.right:
              init = this.replaceFirst(RegExp(pattern), "", this.lastIndexOf(pattern));
              break;
            case Direction.none:
            default:
              assert(!startIndex.isNegative && !(startIndex > this.length - 1));
              init = this.replaceFirst(RegExp(pattern), "", startIndex);
              break;
          }
        }
      }
    });
    return init;
  }

  NumberFormat asCurrencyFormat() => NumberFormat("#,##0.00", Intl.defaultLocale);

  String pad([String pad = '', Direction start = Direction.right]) {
    switch (start) {
      case Direction.left:
        return "$pad${this}";
      case Direction.right:
        return "${this}$pad";
      case Direction.none:
      default:
        return "$pad${this}$pad";
    }
  }

  /// Returns string in currency format
  ///
  /// Example: 50000 => 50,000
  String asCurrency() => this.asCurrencyFormat().format(int.parse(this));

  /// Returns only the First character of every word matching _**[pattern]**_ separated by _**[separator]**_
  String onlyInitials({Pattern pattern = " ", String glue = "."}) {
    var split = this.split(pattern);
    var join = split.fold<String>("", (previousValue, element) => "$previousValue${element.substring(0, 1)}$glue");
    return join.erase([glue], recursive: false, position: Direction.right);
  }

  String get first => "${this[0]}";
}

enum Direction {
  none,
  left,
  right,
}
