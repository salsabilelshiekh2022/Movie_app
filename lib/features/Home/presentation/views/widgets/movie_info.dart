import 'package:flutter/material.dart';

import '../../../../../core/utils/spacing.dart';
import 'movie_cinema.dart';
import 'movie_rating.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key, required this.rating});
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MovieRating(
          rating: rating,
        ),
        horizontalSpace(8),
        const MovieCinema(),
      ],
    );
  }
}
