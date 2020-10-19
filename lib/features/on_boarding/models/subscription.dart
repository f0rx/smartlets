import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/widgets.dart';

part 'subscription.g.dart';

class Subscription extends EnumClass {
  static const Subscription parent = _$parent;
  static const Subscription student = _$student;

  const Subscription._(String name) : super(name);

  static BuiltSet<Subscription> get values => _$values;

  static Subscription valueOf(String name) => _$valueOf(name);

  T fold<T>({T Function() parent, T Function() student}) {
    switch (name) {
      case "parent":
        return parent != null ? parent() : null;
      case "student":
        return student != null ? student() : null;
      default:
        return (T is Widget) ? SizedBox() as T : null;
    }
  }
}
