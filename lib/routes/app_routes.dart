part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const String home = _Paths.home;
  static const String movieDetails = _Paths.movieDetails;
}

abstract class _Paths {
  _Paths._();
  static const home = '/home';
  static const movieDetails = '/movieDetails';
}
