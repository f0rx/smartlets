import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ParentNavCubit extends HydratedCubit<int> {
  static const String _PARENT_NAV_KEY = "parent-bottom-nav-key";

  ParentNavCubit() : super(0);

  void indexChanged(int index) => emit(index);

  @override
  int fromJson(Map<String, dynamic> json) => json[_PARENT_NAV_KEY] as int;

  @override
  Map<String, dynamic> toJson(int state) => {_PARENT_NAV_KEY: state};
}
