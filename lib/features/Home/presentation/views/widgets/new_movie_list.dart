import 'package:flutter/material.dart';

import 'new_movie_item.dart';

class NewMoviesList extends StatelessWidget {
  const NewMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: ListView.builder(
        itemCount: 8,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsetsDirectional.only(start: 24, bottom: 20),
            child: NewMovieItem(),
          );
        },
      ),
    );
  }
}
