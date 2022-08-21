import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  bool _status = true;
  bool get status => _status;

  void toggle() {
    _status = !_status;
    emit(FilterInitial());
  }
}
