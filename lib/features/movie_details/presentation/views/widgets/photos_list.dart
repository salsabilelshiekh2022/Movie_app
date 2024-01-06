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
          "https://i.pinimg.com/564x/71/80/1c/71801c22a45e3bc0f714705ed49cbc9e.jpg",
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        );
      },
    );
  }
}
