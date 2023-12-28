import 'package:flutter/material.dart';
import 'package:movie_app/features/movie_details/presentation/views/movie_details_view.dart';

import '../../../../../core/router/app_router.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';
import 'movie_cinema.dart';
import 'movie_rating.dart';
import 'movie_time_widget.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.navigateTo(const MovieDetailsView());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://i.pinimg.com/564x/ac/ec/ee/aceceecd1dd4c92c552a3851875f40f1.jpg",
              width: 120,
              height: 170,
              fit: BoxFit.fill,
            ),
          ),
          verticalSpace(8),
          Text(
            "Onwerd",
            style: TextStyles.font17White500,
          ),
          const MovieRating(),
          const MovieCinema(),
          verticalSpace(3),
          const MovieTimeWidget(),
        ],
      ),
    );
  }
}
