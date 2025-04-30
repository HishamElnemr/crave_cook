import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/features/home/presentation/manager/popular_cubit/popular_cubit.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/category_widget.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  final List<String> categories = [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Dessert',
    'Snack',
    'Salads'
  ];
  String selectedCategory = 'Breakfast';
  bool isSelected = false;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PopularCubit>(context)
        .getPopularRecipes(type: selectedCategory);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = categories[index];
                BlocProvider.of<PopularCubit>(context)
                    .getPopularRecipes(type: selectedCategory);
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CategoryWidget(
                category: categories[index],
                bgColor: selectedCategory == categories[index]
                    ? kSecondaryColor
                    : kIconColor.withOpacity(.2),
                textColor: selectedCategory == categories[index]
                    ? Colors.white
                    : kPrimaryColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
