import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class StudentNavCubit extends HydratedCubit<int> {
  static const String _STUDENT_NAV_KEY = "student-bottom-nav-key";

  StudentNavCubit() : super(0);

  void indexChanged(int index) => emit(index);

  @override
  int fromJson(Map<String, dynamic> json) => json[_STUDENT_NAV_KEY] as int;

  @override
  Map<String, dynamic> toJson(int state) => {_STUDENT_NAV_KEY: state};
}
