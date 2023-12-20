import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_text_styles.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/header.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/new_movie_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HomeAppBar(),
              NewMoviesList(),
              Header(
                title: "Trending Movies",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
