import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedBooksShimmerItem extends StatelessWidget {
  const FeaturedBooksShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
