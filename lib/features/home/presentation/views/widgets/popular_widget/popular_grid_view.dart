import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/home/presentation/manager/popular_cubit/popular_cubit.dart';
import 'package:recipe_app/features/home/presentation/manager/popular_cubit/popular_states.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/popular_grid_widget.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/popular_loading/popular_loading_grid.dart';

class PopularGridView extends StatelessWidget {
  const PopularGridView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    int columns;
    double aspectRatio;

    if (screenWidth < 320) {
      columns = 1;
      aspectRatio = 0.75;
    } else if (screenWidth < 768) {
      columns = 2;
      aspectRatio = 0.62;
    } else if (screenWidth < 992) {
      columns = 3;
      aspectRatio = 0.6;
    } else {
      columns = 4;
      aspectRatio = 0.55;
    }

    return BlocBuilder<PopularCubit, PopularStates>(
      builder: (context, state) {
        if (state is PopularSuccess) {
          return PopularGridWidget(
            columns: columns,
            aspectRatio: aspectRatio,
            recipesList: state.recipesList,
          );
        } else if (state is PopularFailure) {
          return SliverFillRemaining(
            child: Center(
              child: Text(state.errorMessage),
            ),
          );
        } else {
          return SliverFillRemaining(
            child: PopularLoadingGrid(),
          );
        }
      },
    );
  }
}
