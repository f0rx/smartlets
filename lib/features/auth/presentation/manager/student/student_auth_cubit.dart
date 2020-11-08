import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';

part 'student_auth_cubit.freezed.dart';
part 'student_auth_state.dart';

@Injectable()
class StudentAuthCubit extends Cubit<StudentAuthState> {
  final StudentAuthFacade _facade;

  StudentAuthCubit(this._facade) : super(StudentAuthState.init());

  void get watch async {
    emit(state.copyWith(isLoading: true));
    _facade.watch.listen((b) {
      print("Students Listing ===> ${b?.getOrElse(() => null)?.asList()}");
      emit(state.copyWith(
        students: b.getOrElse(() => KtList.empty()),
        status: b.map((r) => unit),
      ));
    });
    emit(state.copyWith(isLoading: false));
  }

  void create(Student student) async {
    emit(state.copyWith(isLoading: true));
    // Log output if error
    if (student.failureOption.isSome()) log.d(student.failureOption);
    final _result = await _facade.create(student);
    emit(state.copyWith(isLoading: false, status: _result));
  }

  void get read async {
    emit(state.copyWith(isLoading: true));
    _facade.read.listen((a) {
      emit(state.copyWith(
        student: a.getOrElse(() => null),
        status: a.map((r) => unit),
      ));
    });
    emit(state.copyWith(isLoading: false));
  }

  void get delete async {
    emit(state.copyWith(isLoading: true));
    final _result = await _facade.delete;
    emit(state.copyWith(isLoading: false, status: _result));
  }
}
