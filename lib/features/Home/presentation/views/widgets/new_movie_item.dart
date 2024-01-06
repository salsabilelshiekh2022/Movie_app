import 'package:flutter/material.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/features/Home/data/models/movie_model.dart';
import 'package:movie_app/features/movie_details/presentation/views/movie_details_view.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';
import 'movie_info.dart';
import 'movie_time_widget.dart';

class NewMovieItem extends StatelessWidget {
  const NewMovieItem({super.key, required this.movie});
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
              width: 220,
              height: 280,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(8),
          SizedBox(
            width: 220,
            child: Text(
              overflow: TextOverflow.ellipsis,
              movie.title,
              style: TextStyles.font17White500,
            ),
          ),
          MovieInfo(
            rating: movie.voteAverage.toString().substring(0, 3),
          ),
          verticalSpace(3),
          const MovieTimeWidget(),
        ],
      ),
    );
  }
}
