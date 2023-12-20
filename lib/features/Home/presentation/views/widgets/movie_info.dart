import 'package:flutter/material.dart';

import '../../../../../core/utils/spacing.dart';
import 'movie_cinema.dart';
import 'movie_rating.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MovieRating(),
        horizontalSpace(8),
        const MovieCinema(),
      ],
    );
  }
}
