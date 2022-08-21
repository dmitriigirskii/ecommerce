import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  int _category = 1;
  int get category => _category;

  void setCategory(int category) {
    _category = category;
    emit(CategoryInitial());
  }
}
