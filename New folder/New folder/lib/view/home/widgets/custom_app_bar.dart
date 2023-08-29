import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: const TextSpan(
                text: 'Welcome ',
                style: TextStyle(
                  color: ksecondaryclr,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                children: [
              TextSpan(
                  text: 'Shahan',
                  style: TextStyle(
                    color: kblackclr,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ))
            ])),
        const CircleAvatar(
          backgroundColor: klightGrayclr,
          child: Icon(Icons.notifications_outlined, color: kblackclr),
        )
      ],
    );
  }
}
