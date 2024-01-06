import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../Home/data/models/movie_model.dart';

class MovieStory extends StatelessWidget {
  const MovieStory({super.key, required this.movie});
  final BaseMovie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movie.overView,
            style: TextStyles.font14DarkGrey500.copyWith(fontSize: 12),
          ),
          verticalSpace(8),
          Text.rich(
            TextSpan(
                text: "Directors: ",
                style: TextStyles.font14DarkGrey500,
                children: [
                  TextSpan(
                      text: "Anthony Russo, Joe Russo",
                      style: TextStyles.font14White500),
                ]),
          ),
          verticalSpace(3),
          Text.rich(
            TextSpan(
                text: "Writers: ",
                style: TextStyles.font14DarkGrey500,
                children: [
                  TextSpan(
                      text: "Anthony Russo, Joe Russo",
                      style: TextStyles.font14White500),
                ]),
          ),
        ],
      ),
    );
  }
}
