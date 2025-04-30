import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/result_view.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/text_form_widget.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? input;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormWidget(
            onSubmitted: (value) {
              if (formKey.currentState!.validate()) {
                setState(() {
                  input = value;
                  BlocProvider.of<SearchCubit>(context)
                      .searchRecipes(query: input!);
                });
              }
            },
            controller: controller,
          ),
          if (input != null && input!.isNotEmpty) ...[
            SizedBox(
              height: 10,
            ),
            ResultView(),
            SizedBox(
              height: 20,
            ),
          ] else if (input == null || input!.isEmpty)
            Text(
              'Please Enter Recipe Name',
              style: Styles.textStyle_18.copyWith(color: kPrimaryColor),
            ),
        ],
      ),
    );
  }
}
