import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  bool _init = false;
  bool get init => _init;

  void setInit(bool status) {
    _init = status;
    emit(SplashInitial());
  }
}
