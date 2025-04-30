import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/services_locator.dart';
import 'package:recipe_app/features/search/data/repos/search_view_implementation.dart';
import 'package:recipe_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(
        getIt<SearchViewImplementation>(),
      ),
      child: SafeArea(child: SearchViewBody()),
    );
  }
}
