import 'package:flutter/material.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/core/utils/app_colors.dart';
import 'package:movie_app/features/Auth/presentation/views/widgets/anther_auth_account.dart';
import 'package:movie_app/features/Booking_process/presentation/views/book_process_view.dart';
import 'package:movie_app/features/Home/presentation/views/widgets/header.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../Home/data/models/movie_model.dart';
import 'widgets/cast_list.dart';
import 'widgets/movie_details.dart';
import 'widgets/movie_story.dart';
import 'widgets/photos_list.dart';
import 'widgets/trailers_list.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key, required this.movie});
  final BaseMovie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://image.tmdb.org/t/p/w500${movie.posterImg}",
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.fill,
                ),
                MovieDetails(
                  rating: movie.voteAverage.toString().substring(0, 3),
                ),
                Header(title: movie.title),
                MovieStory(movie: movie),
                const Header(title: "Cast:"),
                const CastList(),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, bottom: 32),
                    child: Row(
                      children: [
                        Text(
                          "See full cast & crow",
                          style: TextStyles.font14White500,
                        ),
                        horizontalSpace(3),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColors.white,
                          size: 8,
                        )
                      ],
                    ),
                  ),
                ),
                const Header(title: "Trailers"),
                const TrailersList(),
                const Header(title: "Photos"),
                const PhotosList()
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: AnotherAuthButton(
              title: "Book Now ",
              onTap: () {
                AppRouter.navigateTo(BookProcessView(
                  movie: movie,
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
