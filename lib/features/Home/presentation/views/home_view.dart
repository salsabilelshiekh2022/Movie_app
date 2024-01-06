import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/Home/presentation/view_model/home_cubit/home_cubit.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/coming_soon_movies_list.dart';
import 'widgets/header.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/new_movie_list.dart';
import 'widgets/trending_movies_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..getNewPlayingMovie()
        ..getCommingSoonMovie()
        ..getTrendingMovie(),
      child: const Scaffold(
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
                ComingSoonMoviesList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
