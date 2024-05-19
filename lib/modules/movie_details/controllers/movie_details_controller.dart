import 'package:get/get.dart';
import 'package:movie_category_sheba/core/const.dart';
import 'package:movie_category_sheba/models/cast.dart';
import 'package:movie_category_sheba/models/media_details.dart';
import 'package:movie_category_sheba/models/media_short.dart';

import '../../../services/network.dart';

class MovieDetailsController extends GetxController {
  RxBool loading = RxBool(false);
  final networkServices = Get.find<NetworkServices>();

  Rxn<MediaDetailsModel> media = Rxn();

  RxList<CastModel> casts = RxList.of([]);

  getMovieDetails() async {
    loading.value = true;
    final response = await networkServices.connectAPI(
      fullUrl:
          'https://api.themoviedb.org/3/movie/${(Get.arguments as MediaShortModel).id}',
      requestType: HTTPRequestType.get,
      header: {
        'accept': 'application/json',
        'Authorization': 'Bearer $readAccessToken',
      },
    );
    loading.value = false;

    if (response?.data != null) {
      media.value = MediaDetailsModel.fromJson(response!.data);
    }
  }

  getCasts() async {
    final response = await networkServices.connectAPI(
      fullUrl:
          'https://api.themoviedb.org/3/movie/${(Get.arguments as MediaShortModel).id}/credits',
      requestType: HTTPRequestType.get,
      header: {
        'accept': 'application/json',
        'Authorization': 'Bearer $readAccessToken',
      },
    );

    if (response?.data != null) {
      List<CastModel> temp = [];
      for (var x in (response!.data['cast'] as Iterable)) {
        temp.add(CastModel.fromJson(x));
      }

      casts.value = temp;
    }
  }

  @override
  void onInit() {
    getMovieDetails();
    getCasts();
    super.onInit();
  }
}
