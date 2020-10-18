// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CourseTearOff {
  const _$CourseTearOff();

// ignore: unused_element
  _Course call(
      {@required UniqueId id,
      @required UniqueId categoryId,
      @required CourseTitle title,
      @required CourseDescription description,
      @required CourseRating rating,
      @required Topics topics,
      @required User instructor,
      @required About about,
      @required DateTime createdAt,
      @nullable DateTime updatedAt}) {
    return _Course(
      id: id,
      categoryId: categoryId,
      title: title,
      description: description,
      rating: rating,
      topics: topics,
      instructor: instructor,
      about: about,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

// ignore: unused_element
const $Course = _$CourseTearOff();

mixin _$Course {
  UniqueId get id;
  UniqueId get categoryId;
  CourseTitle get title;
  CourseDescription get description;
  CourseRating get rating;
  Topics get topics;
  User get instructor;
  About get about;
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;

  $CourseCopyWith<Course> get copyWith;
}

abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId categoryId,
      CourseTitle title,
      CourseDescription description,
      CourseRating rating,
      Topics topics,
      User instructor,
      About about,
      DateTime createdAt,
      @nullable DateTime updatedAt});

  $UserCopyWith<$Res> get instructor;
  $AboutCopyWith<$Res> get about;
}

class _$CourseCopyWithImpl<$Res> implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  final Course _value;
  // ignore: unused_field
  final $Res Function(Course) _then;

  @override
  $Res call({
    Object id = freezed,
    Object categoryId = freezed,
    Object title = freezed,
    Object description = freezed,
    Object rating = freezed,
    Object topics = freezed,
    Object instructor = freezed,
    Object about = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      title: title == freezed ? _value.title : title as CourseTitle,
      description: description == freezed
          ? _value.description
          : description as CourseDescription,
      rating: rating == freezed ? _value.rating : rating as CourseRating,
      topics: topics == freezed ? _value.topics : topics as Topics,
      instructor:
          instructor == freezed ? _value.instructor : instructor as User,
      about: about == freezed ? _value.about : about as About,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }

  @override
  $UserCopyWith<$Res> get instructor {
    if (_value.instructor == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.instructor, (value) {
      return _then(_value.copyWith(instructor: value));
    });
  }

  @override
  $AboutCopyWith<$Res> get about {
    if (_value.about == null) {
      return null;
    }
    return $AboutCopyWith<$Res>(_value.about, (value) {
      return _then(_value.copyWith(about: value));
    });
  }
}

abstract class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) then) =
      __$CourseCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId categoryId,
      CourseTitle title,
      CourseDescription description,
      CourseRating rating,
      Topics topics,
      User instructor,
      About about,
      DateTime createdAt,
      @nullable DateTime updatedAt});

  @override
  $UserCopyWith<$Res> get instructor;
  @override
  $AboutCopyWith<$Res> get about;
}

class __$CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(_Course _value, $Res Function(_Course) _then)
      : super(_value, (v) => _then(v as _Course));

  @override
  _Course get _value => super._value as _Course;

  @override
  $Res call({
    Object id = freezed,
    Object categoryId = freezed,
    Object title = freezed,
    Object description = freezed,
    Object rating = freezed,
    Object topics = freezed,
    Object instructor = freezed,
    Object about = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_Course(
      id: id == freezed ? _value.id : id as UniqueId,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      title: title == freezed ? _value.title : title as CourseTitle,
      description: description == freezed
          ? _value.description
          : description as CourseDescription,
      rating: rating == freezed ? _value.rating : rating as CourseRating,
      topics: topics == freezed ? _value.topics : topics as Topics,
      instructor:
          instructor == freezed ? _value.instructor : instructor as User,
      about: about == freezed ? _value.about : about as About,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

class _$_Course extends _Course with DiagnosticableTreeMixin {
  const _$_Course(
      {@required this.id,
      @required this.categoryId,
      @required this.title,
      @required this.description,
      @required this.rating,
      @required this.topics,
      @required this.instructor,
      @required this.about,
      @required this.createdAt,
      @nullable this.updatedAt})
      : assert(id != null),
        assert(categoryId != null),
        assert(title != null),
        assert(description != null),
        assert(rating != null),
        assert(topics != null),
        assert(instructor != null),
        assert(about != null),
        assert(createdAt != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId categoryId;
  @override
  final CourseTitle title;
  @override
  final CourseDescription description;
  @override
  final CourseRating rating;
  @override
  final Topics topics;
  @override
  final User instructor;
  @override
  final About about;
  @override
  final DateTime createdAt;
  @override
  @nullable
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Course(id: $id, categoryId: $categoryId, title: $title, description: $description, rating: $rating, topics: $topics, instructor: $instructor, about: $about, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Course'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('topics', topics))
      ..add(DiagnosticsProperty('instructor', instructor))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Course &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.topics, topics) ||
                const DeepCollectionEquality().equals(other.topics, topics)) &&
            (identical(other.instructor, instructor) ||
                const DeepCollectionEquality()
                    .equals(other.instructor, instructor)) &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)) &&
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
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(topics) ^
      const DeepCollectionEquality().hash(instructor) ^
      const DeepCollectionEquality().hash(about) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$CourseCopyWith<_Course> get copyWith =>
      __$CourseCopyWithImpl<_Course>(this, _$identity);
}

abstract class _Course extends Course {
  const _Course._() : super._();
  const factory _Course(
      {@required UniqueId id,
      @required UniqueId categoryId,
      @required CourseTitle title,
      @required CourseDescription description,
      @required CourseRating rating,
      @required Topics topics,
      @required User instructor,
      @required About about,
      @required DateTime createdAt,
      @nullable DateTime updatedAt}) = _$_Course;

  @override
  UniqueId get id;
  @override
  UniqueId get categoryId;
  @override
  CourseTitle get title;
  @override
  CourseDescription get description;
  @override
  CourseRating get rating;
  @override
  Topics get topics;
  @override
  User get instructor;
  @override
  About get about;
  @override
  DateTime get createdAt;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  _$CourseCopyWith<_Course> get copyWith;
}
