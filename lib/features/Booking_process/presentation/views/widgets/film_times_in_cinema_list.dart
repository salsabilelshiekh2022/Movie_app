import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_colors.dart';

import 'film_times_in_cinema_item.dart';

class FilmTimesInCinemaList extends StatelessWidget {
  const FilmTimesInCinemaList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 100,
        child: GridView.builder(
          padding: EdgeInsets.zero,
          itemCount: 8,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.8 / 1),
          itemBuilder: (context, index) {
            return FilmTimesInCinemaItem(
              color: colors[index],
              time: times[index],
            );
          },
        ),
      ),
    );
  }
}

List<String> times = [
  "12:00",
  "14:00",
  "16:00",
  "17:00",
  "18:00",
  "19:40",
  "21:00",
  "22:00",
];

List<Color> colors = [
  const Color(0xff141829),
  const Color(0xff2c374d),
  const Color(0xff2c374d),
  const Color(0xff2c374d),
  const Color(0xff2c374d),
  const Color(0xff2c374d),
  AppColors.lightPurple,
  const Color(0xff141829),
];
