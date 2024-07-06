import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, this.onPressedSearchIcon, this.controller, this.onFieldSubmitted});

  final void Function()? onPressedSearchIcon;
  final TextEditingController? controller;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
    
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: Colors.white,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(
          borderColor: Colors.grey,
        ),
        focusedBorder: buildOutlineInputBorder(
          borderColor: Colors.white,
        ),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: onPressedSearchIcon,
          icon: const Opacity(
            opacity: 0.8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: kIconsColor,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: borderColor,
      ),
    );
  }
}
