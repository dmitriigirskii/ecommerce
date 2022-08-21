part of 'tabs_cubit.dart';

@immutable
abstract class TabsState {}

class TabsInitial extends TabsState {
  int index;
  TabsInitial({required this.index});
}
