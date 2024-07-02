import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomTextFormField(),
        ],
      ),
    );
  }
}
