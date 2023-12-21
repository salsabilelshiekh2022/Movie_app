import 'package:flutter/material.dart';

class PhotosList extends StatelessWidget {
  const PhotosList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 0, left: 24, right: 24, bottom: 60),
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
      itemBuilder: (context, index) {
        return Image.network(
          "https://i.pinimg.com/564x/ac/ec/ee/aceceecd1dd4c92c552a3851875f40f1.jpg",
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        );
      },
    );
  }
}
