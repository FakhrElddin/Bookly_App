import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 37.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textStyle: Styles.textStyle18.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(
                  16,
                ),
                topLeft: Radius.circular(
                  16,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              backgroundColor: const Color(0xffEF8262),
              textStyle: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: kGilroy,
                color: Colors.white,
              ),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(
                  16,
                ),
                topRight: Radius.circular(
                  16,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
