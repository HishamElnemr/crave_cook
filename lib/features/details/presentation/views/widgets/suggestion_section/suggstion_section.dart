import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/details/presentation/manager/suggstion_cubit.dart';
import 'package:recipe_app/features/details/presentation/manager/suggstion_states.dart';
import 'package:recipe_app/features/details/presentation/views/widgets/suggestion_section/image_loading.dart';
import 'package:recipe_app/features/details/presentation/views/widgets/suggestion_section/suggestion_list_view.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestionCubit, SuggstionStates>(
      builder: (context, state) {
        if (state is SuggestionSuccess) {
          return SuggestionListView(suggestions: state.suggestions);
        } else if (state is SuggestionError) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const ImageLoading();
        }
      },
    );
  }
}
