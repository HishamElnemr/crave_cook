import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/details/presentation/views/widgets/details_section/details_section.dart';
import 'package:recipe_app/features/details/presentation/views/widgets/details_section/image_section.dart';
import 'package:recipe_app/features/details/presentation/views/widgets/suggestion_section/suggstion_section.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.recipeModel});
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageSection(
            imageUrl: recipeModel.image!,
            width: size.width,
            height: size.height * .4,
          ),
          Container(
            width: size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                DetailsSection(
                  title: recipeModel.title!,
                  description: _removeHtmlTags(recipeModel.summary!),
                  onTap: () async {
                    final Uri url = Uri.parse(recipeModel.sourceUrl!);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    }
                  },
                  price: recipeModel.pricePerServing!,
                  time: recipeModel.readyInMinutes!,
                  likes: recipeModel.aggregateLikes!,
                ),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Suggestions',
                      style: Styles.textStyle_16.copyWith(
                        color: kPrimaryColor,
                      )),
                ),
                const SizedBox(height: 12),
                const SuggestionSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _removeHtmlTags(String text) {
    final exp = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);
    return text.replaceAll(exp, '');
  }
}
