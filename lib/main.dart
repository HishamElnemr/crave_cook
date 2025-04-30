import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/services_locator.dart';
import 'package:recipe_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:recipe_app/features/home/presentation/manager/popular_cubit/popular_cubit.dart';

void main() {
  setUp();
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [       
        BlocProvider(
          create: (context) => PopularCubit(
            getIt<HomeRepoImplementation>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Sofia',
          scaffoldBackgroundColor: Colors.white,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
