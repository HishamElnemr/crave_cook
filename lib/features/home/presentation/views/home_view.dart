import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/services_locator.dart';
import 'package:recipe_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:recipe_app/features/home/presentation/manager/featured_cubit/featured_cubit.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeaturedCubit(
        getIt<HomeRepoImplementation>(),
      )..getFeaturedRecipes(),
      child: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
