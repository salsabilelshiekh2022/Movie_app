import 'package:flutter/material.dart';

import '../../../../../core/utils/spacing.dart';
import '../../../../Home/presentation/views/widgets/movie_cinema.dart';
import '../../../../Home/presentation/views/widgets/movie_rating.dart';
import '../../../../Home/presentation/views/widgets/movie_time_widget.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const MovieRating(),
              horizontalSpace(8),
              const MovieCinema(),
            ],
          ),
          const MovieTimeWidget()
        ],
      ),
    );
  }
}
