import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/custom_input/custom_input.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class CustomInputWrapper extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData iconData;
  const CustomInputWrapper(
      {required this.label,
      required this.hintText,
      required this.iconData,
      super.key});

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Name(
          text: label,
          textColor: Colors.deepPurple.shade900,
          textSize: 16,
          textWeight: FontWeight.w600,
        ),
        Container(
          width: 350,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(iconData, color: Colors.grey, size: 25),
              const Gap(
                width: 10,
              ),
              CustomInput(
                label: hintText,
                isPassword: label == 'Password' ? true : false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
