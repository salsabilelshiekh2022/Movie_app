import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_colors.dart';
import 'package:movie_app/features/Booking_process/presentation/views/widgets/movie_booking_time.dart';

import '../../../Auth/presentation/views/widgets/anther_auth_account.dart';
import '../../../Home/presentation/views/widgets/header.dart';
import '../../../movie_details/presentation/views/widgets/movie_details.dart';
import 'widgets/booking_header.dart';
import 'widgets/film_times_in_cinema_list.dart';

class BookProcessView extends StatelessWidget {
  const BookProcessView({super.key});

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
                  "https://i.pinimg.com/564x/ac/ec/ee/aceceecd1dd4c92c552a3851875f40f1.jpg",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.fill,
                ),
                const MovieDetails(),
                const Header(title: "Avengers: Endgame"),
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
          const Align(
            alignment: Alignment.bottomCenter,
            child: AnotherAuthButton(
              title: "Seats Selection",
            ),
          )
        ],
      ),
    );
  }
}
