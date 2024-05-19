import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_category_sheba/modules/home/controllers/home_controller.dart';
import 'package:movie_category_sheba/widgets/media_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put<HomeController>(HomeController());

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF00202e),
              Color(0xFF2c4875),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    right: 40,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Text(
                    'Find Movies, Tv Series, and more...',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                TextField(
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  controller: controller.searchController,
                  onEditingComplete: controller.searchMovie,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    suffixIcon: IconButton(
                      onPressed: controller.searchMovie,
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Search movies',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TabBar(
                  controller: controller.tabController,
                  onTap: (value) {
                    controller.pageController.jumpToPage(value);
                  },
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  tabs: controller.myTabs,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller.pageController,
                    itemCount: 3,
                    itemBuilder: (context, itemIndex) {
                      return Obx(
                        () => GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 225 / 320,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemCount: controller.getMovieList.length,
                          itemBuilder: (BuildContext context, int index) {
                            final movie = controller.getMovieList[index];

                            return MediaCard(movie: movie);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
