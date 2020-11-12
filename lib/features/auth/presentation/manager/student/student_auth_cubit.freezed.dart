// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'student_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StudentAuthStateTearOff {
  const _$StudentAuthStateTearOff();

// ignore: unused_element
  _StudentAuthState call(
      {@nullable Student student,
      KtList<Student> students = const KtList.empty(),
      @nullable Either<StudentAuthFailure, Unit> status,
      bool isLoading = false}) {
    return _StudentAuthState(
      student: student,
      students: students,
      status: status,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StudentAuthState = _$StudentAuthStateTearOff();

/// @nodoc
mixin _$StudentAuthState {
// @nullable StreamSubscription<Either<StudentAuthFailure, Student>> readSubscription,
  @nullable
  Student get student;
  KtList<Student> get students;
  @nullable
  Either<StudentAuthFailure, Unit> get status;
  bool get isLoading;

  $StudentAuthStateCopyWith<StudentAuthState> get copyWith;
}

/// @nodoc
abstract class $StudentAuthStateCopyWith<$Res> {
  factory $StudentAuthStateCopyWith(
          StudentAuthState value, $Res Function(StudentAuthState) then) =
      _$StudentAuthStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable Student student,
      KtList<Student> students,
      @nullable Either<StudentAuthFailure, Unit> status,
      bool isLoading});

  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class _$StudentAuthStateCopyWithImpl<$Res>
    implements $StudentAuthStateCopyWith<$Res> {
  _$StudentAuthStateCopyWithImpl(this._value, this._then);

  final StudentAuthState _value;
  // ignore: unused_field
  final $Res Function(StudentAuthState) _then;

  @override
  $Res call({
    Object student = freezed,
    Object students = freezed,
    Object status = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      student: student == freezed ? _value.student : student as Student,
      students:
          students == freezed ? _value.students : students as KtList<Student>,
      status: status == freezed
          ? _value.status
          : status as Either<StudentAuthFailure, Unit>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }

  @override
  $StudentCopyWith<$Res> get student {
    if (_value.student == null) {
      return null;
    }
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value));
    });
  }
}

/// @nodoc
abstract class _$StudentAuthStateCopyWith<$Res>
    implements $StudentAuthStateCopyWith<$Res> {
  factory _$StudentAuthStateCopyWith(
          _StudentAuthState value, $Res Function(_StudentAuthState) then) =
      __$StudentAuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable Student student,
      KtList<Student> students,
      @nullable Either<StudentAuthFailure, Unit> status,
      bool isLoading});

  @override
  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$StudentAuthStateCopyWithImpl<$Res>
    extends _$StudentAuthStateCopyWithImpl<$Res>
    implements _$StudentAuthStateCopyWith<$Res> {
  __$StudentAuthStateCopyWithImpl(
      _StudentAuthState _value, $Res Function(_StudentAuthState) _then)
      : super(_value, (v) => _then(v as _StudentAuthState));

  @override
  _StudentAuthState get _value => super._value as _StudentAuthState;

  @override
  $Res call({
    Object student = freezed,
    Object students = freezed,
    Object status = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_StudentAuthState(
      student: student == freezed ? _value.student : student as Student,
      students:
          students == freezed ? _value.students : students as KtList<Student>,
      status: status == freezed
          ? _value.status
          : status as Either<StudentAuthFailure, Unit>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_StudentAuthState extends _StudentAuthState {
  const _$_StudentAuthState(
      {@nullable this.student,
      this.students = const KtList.empty(),
      @nullable this.status,
      this.isLoading = false})
      : assert(students != null),
        assert(isLoading != null),
        super._();

  @override // @nullable StreamSubscription<Either<StudentAuthFailure, Student>> readSubscription,
  @nullable
  final Student student;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Student> students;
  @override
  @nullable
  final Either<StudentAuthFailure, Unit> status;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'StudentAuthState(student: $student, students: $students, status: $status, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StudentAuthState &&
            (identical(other.student, student) ||
                const DeepCollectionEquality()
                    .equals(other.student, student)) &&
            (identical(other.students, students) ||
                const DeepCollectionEquality()
                    .equals(other.students, students)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(student) ^
      const DeepCollectionEquality().hash(students) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$StudentAuthStateCopyWith<_StudentAuthState> get copyWith =>
      __$StudentAuthStateCopyWithImpl<_StudentAuthState>(this, _$identity);
}

abstract class _StudentAuthState extends StudentAuthState {
  const _StudentAuthState._() : super._();
  const factory _StudentAuthState(
      {@nullable Student student,
      KtList<Student> students,
      @nullable Either<StudentAuthFailure, Unit> status,
      bool isLoading}) = _$_StudentAuthState;

  @override // @nullable StreamSubscription<Either<StudentAuthFailure, Student>> readSubscription,
  @nullable
  Student get student;
  @override
  KtList<Student> get students;
  @override
  @nullable
  Either<StudentAuthFailure, Unit> get status;
  @override
  bool get isLoading;
  @override
  _$StudentAuthStateCopyWith<_StudentAuthState> get copyWith;
}
