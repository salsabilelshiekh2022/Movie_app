import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/header.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/new_movie_list.dart';
import 'widgets/trending_movies_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              HomeAppBar(),
              NewMoviesList(),
              Header(
                title: "Trending Movies",
              ),
              TrendingMoviesList(),
              Header(
                title: "Coming Soon",
              ),
              TrendingMoviesList(),
            ],
          ),
        ),
      ),
    );
  }
}
