import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error,
        style: Styles.textStyle18,
      ),
    );
  }
}
