import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_category_sheba/core/const.dart';
import 'package:movie_category_sheba/models/media_short.dart';
import 'package:movie_category_sheba/services/network.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final networkServices = Get.find<NetworkServices>();

  late TabController tabController;
  late PageController pageController;

  final searchController = TextEditingController();

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Popular'),
    const Tab(text: 'Top Rated'),
    const Tab(text: 'Upcoming'),
  ];

  RxList<MediaShortModel> movies = RxList<MediaShortModel>.from([]);
  RxList<MediaShortModel> topRated = RxList<MediaShortModel>.from([]);
  RxList<MediaShortModel> upComing = RxList<MediaShortModel>.from([]);

  discoverMovies() async {
    final response = await networkServices.connectAPI(
      fullUrl: 'https://api.themoviedb.org/3/movie/popular',
      requestType: HTTPRequestType.get,
      header: {
        'accept': 'application/json',
        'Authorization': 'Bearer $readAccessToken',
      },
    );

    if (response?.data != null) {
      List<MediaShortModel> temp = [];
      for (var x in (response!.data['results'] as Iterable)) {
        temp.add(MediaShortModel.fromJson(x));
      }

      movies.value = temp;
    }
  }

  topRatedMovies() async {
    final response = await networkServices.connectAPI(
      fullUrl: 'https://api.themoviedb.org/3/movie/top_rated',
      requestType: HTTPRequestType.get,
      header: {
        'accept': 'application/json',
        'Authorization': 'Bearer $readAccessToken',
      },
    );

    if (response?.data != null) {
      List<MediaShortModel> temp = [];
      for (var x in (response!.data['results'] as Iterable)) {
        temp.add(MediaShortModel.fromJson(x));
      }

      topRated.value = temp;
    }
  }

  upComingMovies() async {
    final response = await networkServices.connectAPI(
      fullUrl: 'https://api.themoviedb.org/3/movie/upcoming',
      requestType: HTTPRequestType.get,
      header: {
        'accept': 'application/json',
        'Authorization': 'Bearer $readAccessToken',
      },
    );

    if (response?.data != null) {
      List<MediaShortModel> temp = [];
      for (var x in (response!.data['results'] as Iterable)) {
        temp.add(MediaShortModel.fromJson(x));
      }

      upComing.value = temp;
    }
  }

  searchMovie() async {
    final response = await networkServices.connectAPI(
      fullUrl:
          'https://api.themoviedb.org/3/search/movie?query=${searchController.text}',
      requestType: HTTPRequestType.get,
      header: {
        'accept': 'application/json',
        'Authorization': 'Bearer $readAccessToken',
      },
    );

    if (response?.data != null) {
      List<MediaShortModel> temp = [];
      for (var x in (response!.data['results'] as Iterable)) {
        temp.add(MediaShortModel.fromJson(x));
      }

      movies.value = temp;
    }
  }

  RxList<MediaShortModel> get getMovieList => pageController.page == 0
      ? movies
      : pageController.page == 1
          ? topRated
          : upComing;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 3);
    discoverMovies();
    topRatedMovies();
    upComingMovies();
    pageController = PageController();
  }

  @override
  void onClose() {
    searchController.dispose();
    tabController.dispose();
    pageController.dispose();
    super.onClose();
  }
}
