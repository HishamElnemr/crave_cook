import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/cart/presentation/views/cart_view.dart';
import 'package:recipe_app/features/category/presentation/views/categories_recipes_view/category_recipes_view.dart';
import 'package:recipe_app/features/category/presentation/views/category_view/category_view.dart';
import 'package:recipe_app/features/details/presentation/views/details_view.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/home/presentation/views/home_view.dart';
import 'package:recipe_app/features/main_view.dart';
import 'package:recipe_app/features/search/presentation/views/search_view.dart';
import 'package:recipe_app/features/splash/splash_view.dart';

abstract class AppRouter {
  static const homeView = '/HomeView';
  static const searchView = '/SearchView';
  static const mainView = '/MainView';
  static const detailsView = '/DetailsView';
  static const categoryView = '/CategoryView';
  static const categoryRecipesView = '/CategoryRecipesView';
  static const cartView = '/CartView';
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return MainView(child: child);
        },
        routes: [
          GoRoute(
            path: mainView,
            builder: (context, state) {
              return HomeView();
            },
          ),
          GoRoute(
            path: searchView,
            builder: (context, state) => const SearchView(),
          ),
          GoRoute(
            path: categoryView,
            builder: (context, state) {
              return CategoryView();
            },
          ),
          GoRoute(
            path: cartView,
            builder: (context, state) => const CartView(),
          ),
        ],
      ),
      GoRoute(
        path: categoryRecipesView,
        builder: (context, state) => CategoryRecipesView(
          categoryName: state.extra as String,
        ),
      ),
      GoRoute(
        path: detailsView,
        builder: (context, state) => DetailsView(
          recipeModel: state.extra as RecipeModel,
        ),
      ),
    ],
  );
}
