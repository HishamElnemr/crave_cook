import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:recipe_app/features/search/presentation/manager/search_cubit/search_states.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/reasult_loading_list_view.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/result_list_view.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          if (state.recipes.isEmpty) {
            return const Center(
              child: Text(
                'No results found.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          }
          return ResultListView(
            recipes: state.recipes,
          );
        } else if (state is SearchError) {
          return Center(child: Text(state.error));
        } else {
          return ReasultLoadingListView();
        }
      },
    );
  }
}
