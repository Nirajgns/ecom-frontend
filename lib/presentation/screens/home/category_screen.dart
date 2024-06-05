import 'package:ecom_app/logic/cubits/caregory_cubit/category_cubit.dart';
import 'package:ecom_app/logic/cubits/caregory_cubit/category_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(builder: (context, state) {
      if (state is CategoryLoadingState && state.categories.isEmpty) {
        const Center(child: CircularProgressIndicator());
      }

      if (state is CategoryErrorstate && state.categories.isEmpty) {
        return Center(
          child: Text(
            state.message.toString(),
          ),
        );
      }

      return ListView.builder(
        itemBuilder: (context, index) {
          final category = state.categories[index];
          return ListTile(
            onTap: () {},
            leading: const Icon(Icons.category),
            title: Text('${category.title}'),
            trailing: const Icon(Icons.keyboard_arrow_right),
          );
        },
        itemCount: state.categories.length,
      );
    });
  }
}
