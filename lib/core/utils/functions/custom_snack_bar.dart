import 'package:flutter/material.dart';

import '../styles.dart';

void customSnackBar(context, {required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: Styles.textStyle18,
      ),
    ),
  );
}
