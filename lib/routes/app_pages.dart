import 'package:get/get.dart';

import '../modules/home/views/home_view.dart';
import '../modules/movie_details/views/movie_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const String initialPage = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: _Paths.movieDetails,
      page: () => const MovieDetailsView(),
    ),
  ];
}
