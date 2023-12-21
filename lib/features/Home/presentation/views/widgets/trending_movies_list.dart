import 'package:flutter/material.dart';

import 'movie_item.dart';

class TrendingMoviesList extends StatelessWidget {
  const TrendingMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 302,
      child: ListView.builder(
        itemCount: 8,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 24, bottom: 30),
            child: MovieItem(),
          );
        },
      ),
    );
  }
}
