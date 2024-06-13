import 'package:ecom_app/data/model/category/category_model.dart';
import 'package:ecom_app/data/reposotories/category_repository.dart';
import 'package:ecom_app/logic/cubits/caregory_cubit/category_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitialState()) {
    _initialize();
  }

  final _categoryRepository = CategoryRepository();

  void _initialize() async {
    emit(CategoryLoadedstate(state.categories));

    try {
      List<CategoryModel> categories =
          await _categoryRepository.fetchAllCategories();

      emit(CategoryLoadedstate(categories));
    } catch (ex) {
      emit(CategoryErrorstate(ex.toString(), state.categories));
    }
  }
}
