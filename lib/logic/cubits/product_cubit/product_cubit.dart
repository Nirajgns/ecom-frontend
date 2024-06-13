import 'package:ecom_app/data/model/product/product_model.dart';
import 'package:ecom_app/data/model/product/product_repository.dart';
import 'package:ecom_app/logic/cubits/product_cubit/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitialState()) {
    _initialize();
  }

  final _productRepository = ProductRepository();

  void _initialize() async {
    emit(ProductLoadedState(state.products));

    try {
      List<ProductModel> products = await _productRepository.fetchAllProducts();

      emit(ProductLoadedState(products));
    } catch (ex) {
      emit(ProductErrorState(ex.toString(), state.products));
    }
  }
}
