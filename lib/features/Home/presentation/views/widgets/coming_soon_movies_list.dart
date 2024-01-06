import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/home_cubit/home_cubit.dart';
import '../../view_model/home_cubit/home_state.dart';
import 'movie_item.dart';

class ComingSoonMoviesList extends StatelessWidget {
  const ComingSoonMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.of(context);
        return SizedBox(
          height: 302,
          child: ListView.builder(
            itemCount: cubit.comingSoonMoviesList.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 24, bottom: 30),
                child: MovieItem(
                  movie: cubit.comingSoonMoviesList[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
