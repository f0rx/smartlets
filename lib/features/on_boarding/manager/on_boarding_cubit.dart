import 'package:bloc/bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/on_boarding/models/subscription.dart';

part 'on_boarding_cubit.freezed.dart';
part 'on_boarding_state.dart';

@Injectable()
class OnBoardingCubit extends Cubit<OnBoardingState> {
  static const String SUBSCRIPTION_KEY = "subscription-type";
  final box = Hive.openLazyBox("user-settings-box");
  final DataConnectionChecker connectionChecker;

  OnBoardingCubit(this.connectionChecker) : super(OnBoardingState());

  void checkInternetConnection() async {
    final conn = await connectionChecker.hasConnection;
    emit(state.copyWith(hasStableInternet: conn));
  }

  void subscribeAParent() async {
    emit(state.copyWith(isLoading: true, shouldListen: false));
    await (await box).put(SUBSCRIPTION_KEY, Subscription.parent.name);
    emit(state.copyWith(subscription: Subscription.parent));
    await Future.delayed(Duration(milliseconds: 1000), () => false);
    emit(state.copyWith(isLoading: false, shouldListen: true));
  }

  void subscribeAStudent() async {
    emit(state.copyWith(isLoading: true, shouldListen: false));
    await (await box).put(SUBSCRIPTION_KEY, Subscription.student.name);
    emit(state.copyWith(subscription: Subscription.student));
    await Future.delayed(Duration(milliseconds: 1000), () => false);
    emit(state.copyWith(isLoading: false, shouldListen: true));
  }

  void getSubscription() async {
    final data = await (await box).get(SUBSCRIPTION_KEY);
    emit(state.copyWith(
      subscription: data != null ? Subscription.valueOf(data) : state.subscription,
    ));
  }
}
