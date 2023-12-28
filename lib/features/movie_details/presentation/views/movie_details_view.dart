import 'package:flutter/material.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/core/utils/app_colors.dart';
import 'package:movie_app/features/Auth/presentation/views/widgets/anther_auth_account.dart';
import 'package:movie_app/features/Booking_process/presentation/views/book_process_view.dart';
import 'package:movie_app/features/Home/presentation/views/widgets/header.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/spacing.dart';
import 'widgets/cast_list.dart';
import 'widgets/movie_details.dart';
import 'widgets/movie_story.dart';
import 'widgets/photos_list.dart';
import 'widgets/trailers_list.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

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
                  "https://i.pinimg.com/564x/ac/ec/ee/aceceecd1dd4c92c552a3851875f40f1.jpg",
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.fill,
                ),
                const MovieDetails(),
                const Header(title: "Avengers: Endgame"),
                const MovieStory(),
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
                AppRouter.navigateTo(const BookProcessView());
              },
            ),
          )
        ],
      ),
    );
  }
}
