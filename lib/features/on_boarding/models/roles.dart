import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/widgets.dart';

part 'roles.g.dart';

class Roles extends EnumClass {
  static const Roles parent = _$parent;
  static const Roles student = _$student;
  static const Roles admin = _$admin;

  const Roles._(String name) : super(name);

  static BuiltSet<Roles> get values => _$values;

  static BuiltList<Roles> get list => _$values.toBuiltList();

  static Roles valueOf(String name) => _$valueOf(name);

  bool get isParent => this.name == parent.name;

  bool get isStudent => this.name == student.name;

  bool get isAdmin => this.name == admin.name;

  T fold<T>({
    T Function() parent,
    T Function() student,
    T Function() admin,
  }) {
    switch (name) {
      case "parent":
        return parent != null ? parent() : null;
      case "student":
        return student != null ? student() : null;
      case "admin":
        return admin != null ? admin() : null;
      default:
        return (T is Widget) ? SizedBox() as T : null;
    }
  }
}
