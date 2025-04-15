import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/plus_button.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class StatusWrapper extends StatelessWidget {
  const StatusWrapper(
      {required this.userImage,
      this.name,
      this.borderColor,
      this.plusIcon,
      super.key});

  final String? name;
  final Color? borderColor;
  final Image userImage;
  final String? plusIcon;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: borderColor ?? Colors.white.withOpacity(0.0),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(100)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: userImage,
              ),
            ),
            if (plusIcon != null)
              Positioned(
                top: 45,
                left: 30,
                child: PlusButton(plusIcon: plusIcon!),
              )
          ],
        ),
        if (name != null && name!.isNotEmpty)
          Name(
            text: name!,
            textColor: Colors.black,
            textSize: 16,
            textWeight: FontWeight.normal,
          )
      ],
    );
  }
}
