import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tabs_state.dart';

class TabsCubit extends Cubit<TabsState> {
  TabsCubit() : super(TabsInitial(index: 0));

  void setIndex(int index) {
    emit(TabsInitial(index: index));
  }
}
