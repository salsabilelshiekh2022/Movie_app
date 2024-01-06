import 'package:flutter/material.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/core/utils/app_colors.dart';
import 'package:movie_app/features/Booking_process/presentation/views/widgets/movie_booking_time.dart';

import '../../../Auth/presentation/views/widgets/anther_auth_account.dart';
import '../../../Home/data/models/movie_model.dart';
import '../../../Home/presentation/views/widgets/header.dart';
import '../../../movie_details/presentation/views/widgets/movie_details.dart';
import '../../../payment/presentation/views/payment_view.dart';
import 'widgets/booking_header.dart';
import 'widgets/film_times_in_cinema_list.dart';

class BookProcessView extends StatelessWidget {
  const BookProcessView({super.key, required this.movie});
  final BaseMovie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                  "https://image.tmdb.org/t/p/w500${movie.posterImg}",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                MovieDetails(
                  rating: movie.voteAverage.toString().substring(0, 3),
                ),
                Header(title: movie.title),
                const MovieBookingTime(),
                const SizedBox(
                  height: 24,
                ),
                const BookingHeader(title: "Star Mall Cinema"),
                const SizedBox(height: 10),
                const FilmTimesInCinemaList(),
                const SizedBox(
                  height: 24,
                ),
                const BookingHeader(title: "Rainstar Movie Theater"),
                const SizedBox(height: 10),
                const FilmTimesInCinemaList()
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnotherAuthButton(
              title: "Seats Selection",
              onTap: () {
                AppRouter.navigateTo(const PaymetView());
              },
            ),
          )
        ],
      ),
    );
  }
}
