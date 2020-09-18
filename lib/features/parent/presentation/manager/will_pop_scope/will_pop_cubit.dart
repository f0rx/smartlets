import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smartlets/utils/utils.dart';

part 'will_pop_cubit.freezed.dart';

@Injectable()
class WillPopCubit extends Cubit<WillPopState> {
  DateTime currentTime;

  WillPopCubit() : super(WillPopState.init());

  void changePopScope() async {
    DateTime now = DateTime.now();

    if (currentTime == null || now.difference(currentTime) > Helpers.willPopTimeout) {
      currentTime = now;
      emit(state.copyWith(canPop: false));
      return;
    }
    emit(state.copyWith(canPop: true));
    currentTime = null;
  }
}

@freezed
@immutable
abstract class WillPopState with _$WillPopState {
  const factory WillPopState({
    @Default(false) bool canPop,
  }) = _WillPopState;

  factory WillPopState.init() => WillPopState();
}
