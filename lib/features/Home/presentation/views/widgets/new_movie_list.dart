import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/home_cubit/home_cubit.dart';
import '../../view_model/home_cubit/home_state.dart';
import 'new_movie_item.dart';

class NewMoviesList extends StatelessWidget {
  const NewMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.of(context);
        return SizedBox(
          height: 380,
          child: ListView.builder(
            itemCount: cubit.nowPlayingMoviesList.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsetsDirectional.only(start: 24, bottom: 20),
                child: NewMovieItem(
                  movie: cubit.nowPlayingMoviesList[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class NowPlayingMovieCubit {}
