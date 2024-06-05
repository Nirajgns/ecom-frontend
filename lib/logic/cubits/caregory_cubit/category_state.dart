import 'package:ecom_app/data/model/category/category_model.dart';

abstract class CategoryState {
  final List<CategoryModel> categories;
  CategoryState(this.categories);
}

class CategoryInitialState extends CategoryState {
  CategoryInitialState() : super([]);
}

class CategoryLoadingState extends CategoryState {
  CategoryLoadingState(super.categories);
}

class CategoryLoadedstate extends CategoryState {
  CategoryLoadedstate(super.categories);
}

class CategoryErrorstate extends CategoryState {
  final String message;
  CategoryErrorstate(this.message, super.categories);
}
