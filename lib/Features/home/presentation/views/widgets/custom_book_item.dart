import 'package:bookly/core/widgets/custom_cached_network_image_error_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          errorWidget: (context, url, error) =>
              const CustomCachedNetworkImageErrorWidget(),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
