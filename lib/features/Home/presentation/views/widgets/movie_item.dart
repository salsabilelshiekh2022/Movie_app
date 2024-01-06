import 'package:flutter/material.dart';
import 'package:movie_app/features/movie_details/presentation/views/movie_details_view.dart';

import '../../../../../core/router/app_router.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../data/models/movie_model.dart';
import 'movie_cinema.dart';
import 'movie_rating.dart';
import 'movie_time_widget.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.movie});
  final BaseMovie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.navigateTo(MovieDetailsView(
          movie: movie,
        ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://image.tmdb.org/t/p/w500${movie.posterImg}",
              width: 120,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(8),
          SizedBox(
            width: 120,
            child: Text(
              overflow: TextOverflow.ellipsis,
              movie.title,
              style: TextStyles.font17White500,
            ),
          ),
          MovieRating(
            rating: movie.voteAverage.toString().substring(0, 3),
          ),
          const MovieCinema(),
          verticalSpace(3),
          const MovieTimeWidget(),
        ],
      ),
    );
  }
}
