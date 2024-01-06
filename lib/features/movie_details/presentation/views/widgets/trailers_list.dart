import 'package:flutter/material.dart';

class TrailersList extends StatelessWidget {
  const TrailersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 24, bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://i.pinimg.com/564x/71/80/1c/71801c22a45e3bc0f714705ed49cbc9e.jpg",
                  width: 150,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }),
    );
  }
}
