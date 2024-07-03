import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomCachedNetworkImageErrorWidget extends StatelessWidget {
  const CustomCachedNetworkImageErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            size: 30,
          ),
          Text(
            'Image not found',
            style: Styles.textStyle18,
          ),
        ],
      ),
    );
  }
}
