import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/home/presentation/manager/featured_cubit/featured_cubit.dart';
import 'package:recipe_app/features/home/presentation/manager/featured_cubit/featured_recipes_states.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/featured_widget/featured_list_view_body.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/featured_widget/shimmer_horizontal_list.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubit, FeaturedRecipesStates>(
      builder: (context, state) {
        if (state is FeaturedRecipesSuccess) {
          return FeaturedListViewBody(
            recipes: state.featuredRecipes,
          );
        } else if (state is FeaturedRecipesFailure) {
          return Text(state.error);
        } else {
          return ShimmerHorizontalList();
        }
      },
    );
  }
}

