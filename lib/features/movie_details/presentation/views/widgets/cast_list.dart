import 'package:flutter/material.dart';

import 'cast_item.dart';

class CastList extends StatelessWidget {
  const CastList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          itemCount: 8,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsetsDirectional.only(start: 24, bottom: 20),
              child: CastItem(),
            );
          }),
    );
  }
}
