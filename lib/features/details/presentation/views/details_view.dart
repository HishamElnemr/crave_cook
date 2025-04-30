import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/services_locator.dart';
import 'package:recipe_app/features/details/data/repo/suggestion_implementation.dart';
import 'package:recipe_app/features/details/presentation/manager/suggstion_cubit.dart';
import 'package:recipe_app/features/details/presentation/views/widgets/details_section/details_view_body.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.recipeModel});
  final RecipeModel recipeModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SuggestionCubit(
        getIt<SuggestionImplementation>(),
      )..getSuggestions(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: DetailsViewBody(
          recipeModel: recipeModel,
        ),
      ),
    );
  }
}
