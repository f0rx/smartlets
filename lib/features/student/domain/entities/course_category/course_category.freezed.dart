// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'course_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CourseCategoryTearOff {
  const _$CourseCategoryTearOff();

// ignore: unused_element
  _CourseCategory call(
      {@required UniqueId id,
      @required CategoryTitle title,
      @required CategoryDescription description,
      @required ColorGradient gradient,
      @required CategoryIcon icon,
      @required DateTime createdAt,
      @nullable DateTime updatedAt}) {
    return _CourseCategory(
      id: id,
      title: title,
      description: description,
      gradient: gradient,
      icon: icon,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CourseCategory = _$CourseCategoryTearOff();

/// @nodoc
mixin _$CourseCategory {
  UniqueId get id;
  CategoryTitle get title;
  CategoryDescription get description;
  ColorGradient get gradient;
  CategoryIcon get icon;
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;

  $CourseCategoryCopyWith<CourseCategory> get copyWith;
}

/// @nodoc
abstract class $CourseCategoryCopyWith<$Res> {
  factory $CourseCategoryCopyWith(
          CourseCategory value, $Res Function(CourseCategory) then) =
      _$CourseCategoryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      CategoryTitle title,
      CategoryDescription description,
      ColorGradient gradient,
      CategoryIcon icon,
      DateTime createdAt,
      @nullable DateTime updatedAt});
}

/// @nodoc
class _$CourseCategoryCopyWithImpl<$Res>
    implements $CourseCategoryCopyWith<$Res> {
  _$CourseCategoryCopyWithImpl(this._value, this._then);

  final CourseCategory _value;
  // ignore: unused_field
  final $Res Function(CourseCategory) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object gradient = freezed,
    Object icon = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as CategoryTitle,
      description: description == freezed
          ? _value.description
          : description as CategoryDescription,
      gradient:
          gradient == freezed ? _value.gradient : gradient as ColorGradient,
      icon: icon == freezed ? _value.icon : icon as CategoryIcon,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CourseCategoryCopyWith<$Res>
    implements $CourseCategoryCopyWith<$Res> {
  factory _$CourseCategoryCopyWith(
          _CourseCategory value, $Res Function(_CourseCategory) then) =
      __$CourseCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      CategoryTitle title,
      CategoryDescription description,
      ColorGradient gradient,
      CategoryIcon icon,
      DateTime createdAt,
      @nullable DateTime updatedAt});
}

/// @nodoc
class __$CourseCategoryCopyWithImpl<$Res>
    extends _$CourseCategoryCopyWithImpl<$Res>
    implements _$CourseCategoryCopyWith<$Res> {
  __$CourseCategoryCopyWithImpl(
      _CourseCategory _value, $Res Function(_CourseCategory) _then)
      : super(_value, (v) => _then(v as _CourseCategory));

  @override
  _CourseCategory get _value => super._value as _CourseCategory;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object gradient = freezed,
    Object icon = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_CourseCategory(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as CategoryTitle,
      description: description == freezed
          ? _value.description
          : description as CategoryDescription,
      gradient:
          gradient == freezed ? _value.gradient : gradient as ColorGradient,
      icon: icon == freezed ? _value.icon : icon as CategoryIcon,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_CourseCategory extends _CourseCategory with DiagnosticableTreeMixin {
  const _$_CourseCategory(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.gradient,
      @required this.icon,
      @required this.createdAt,
      @nullable this.updatedAt})
      : assert(id != null),
        assert(title != null),
        assert(description != null),
        assert(gradient != null),
        assert(icon != null),
        assert(createdAt != null),
        super._();

  @override
  final UniqueId id;
  @override
  final CategoryTitle title;
  @override
  final CategoryDescription description;
  @override
  final ColorGradient gradient;
  @override
  final CategoryIcon icon;
  @override
  final DateTime createdAt;
  @override
  @nullable
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseCategory(id: $id, title: $title, description: $description, gradient: $gradient, icon: $icon, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('gradient', gradient))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.gradient, gradient) ||
                const DeepCollectionEquality()
                    .equals(other.gradient, gradient)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(gradient) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$CourseCategoryCopyWith<_CourseCategory> get copyWith =>
      __$CourseCategoryCopyWithImpl<_CourseCategory>(this, _$identity);
}

abstract class _CourseCategory extends CourseCategory {
  const _CourseCategory._() : super._();
  const factory _CourseCategory(
      {@required UniqueId id,
      @required CategoryTitle title,
      @required CategoryDescription description,
      @required ColorGradient gradient,
      @required CategoryIcon icon,
      @required DateTime createdAt,
      @nullable DateTime updatedAt}) = _$_CourseCategory;

  @override
  UniqueId get id;
  @override
  CategoryTitle get title;
  @override
  CategoryDescription get description;
  @override
  ColorGradient get gradient;
  @override
  CategoryIcon get icon;
  @override
  DateTime get createdAt;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  _$CourseCategoryCopyWith<_CourseCategory> get copyWith;
}
