import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/services_locator.dart';
import 'package:recipe_app/features/category/data/repo/category_repo_implementation.dart';
import 'package:recipe_app/features/category/presentation/manager/category_cubit.dart';
import 'package:recipe_app/features/category/presentation/views/categories_recipes_view/widgets/category_recipes_list_view.dart';

class CategoryRecipesView extends StatefulWidget {
  const CategoryRecipesView({
    super.key,
    required this.categoryName,
  });

  final String categoryName;

  @override
  State<CategoryRecipesView> createState() => _CategoryRecipesViewState();
}

class _CategoryRecipesViewState extends State<CategoryRecipesView> {
  late final CategoryCubit _categoryCubit;

  @override
  void initState() {
    super.initState();
    _categoryCubit = CategoryCubit(getIt<CategoryRepoImplementation>());
    _categoryCubit.getCategories(type: widget.categoryName);
  }

  @override
  void dispose() {
    _categoryCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _categoryCubit,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${widget.categoryName} Recipes',
            style: const TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: kPrimaryColor,
        ),
        body: const CategoryRecipesListView(),
      ),
    );
  }
}
