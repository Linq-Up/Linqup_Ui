import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onClick,
    this.bgColor,
    this.borderColor,
    this.bgHeight,
    this.imageIcon,
    this.iconData,
    this.iconColor,
    this.title,
    this.customPaddingHorizontal,
    this.customPaddingVertical,
    this.titleColor,
    this.titleSize,
    this.customBorderRadius,
    this.titleWeight,
    this.borderWidth,
    this.firstLayerPadding,
    this.firstLayerBorderColor,
    this.firstLayerBorderWidth,
    this.firstLayerBorderRadius,
    this.bottomLeft,
    this.bottomRight,
    this.topLeft,
    this.topRight,
    this.customButtonWidth,
    super.key,
  });

  final String? imageIcon;
  final IconData? iconData;
  final Color? borderColor;
  final Color? bgColor;
  final double? bgHeight;
  final void Function() onClick;
  final Color? iconColor;
  final String? title;
  final Color? titleColor;
  final double? titleSize;
  final double? customPaddingHorizontal;
  final double? customPaddingVertical;
  final double? customBorderRadius;
  final FontWeight? titleWeight;
  final double? borderWidth;
  final double? firstLayerPadding;
  final Color? firstLayerBorderColor;
  final double? firstLayerBorderWidth;
  final double? firstLayerBorderRadius;
  final double? bottomRight;
  final double? bottomLeft;
  final double? topLeft;
  final double? topRight;
  final double? customButtonWidth;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: firstLayerBorderColor ?? Colors.transparent,
            width: firstLayerBorderWidth ?? 0.0,
          ),
          borderRadius: BorderRadius.circular(firstLayerBorderRadius ?? 0),
        ),
        padding: EdgeInsets.all(firstLayerPadding ?? 0.0),
        child: IntrinsicWidth(
          child: Container(
              width: customButtonWidth,
              padding: EdgeInsets.symmetric(
                  horizontal: customPaddingHorizontal ?? 0.0,
                  vertical: customPaddingVertical ?? 0.0),
              decoration: BoxDecoration(
                  color: bgColor ?? Colors.transparent,
                  border: Border.all(
                    color: borderColor ?? Colors.transparent,
                    width: borderWidth ?? 0.0,
                  ),
                  borderRadius: title != null
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(bottomLeft ?? 0),
                          bottomRight: Radius.circular(bottomRight ?? 0),
                          topLeft: Radius.circular(topLeft ?? 0),
                          topRight: Radius.circular(topRight ?? 0),
                        )
                      : BorderRadius.circular(customBorderRadius ?? 0)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (imageIcon != null && imageIcon!.isNotEmpty)
                    Image.asset(
                      imageIcon!,
                      scale: bgHeight,
                      fit: BoxFit.cover,
                    )
                  else if (iconData != null && iconData != Icons.error)
                    Icon(
                      iconData,
                      size: bgHeight,
                      color: iconColor,
                    ),
                  if (title != null && title!.isNotEmpty)
                    Name(
                      text: title!,
                      textColor: titleColor ?? Colors.white.withOpacity(0.0),
                      textSize: titleSize ?? 0.0,
                      textWeight: titleWeight ?? FontWeight.normal,
                    ),
                ],
              )),
        ),
      ),
    );
  }
}
