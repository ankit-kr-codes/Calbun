import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';

//Primary
class PrimaryThemedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final double? height;
  final double? width;

  const PrimaryThemedContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.border,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkPrimary : AppColors.lightPrimary,
        borderRadius: borderRadius ?? BorderRadius.circular(15),
        border: border,
      ),
      child: child,
    );
  }
}

//Secondary
class SecondaryThemedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final double? height;
  final double? width;

  const SecondaryThemedContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.border,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSecondary : AppColors.lightSecondary,
        borderRadius: borderRadius ?? BorderRadius.circular(15),
        border: border,
      ),
      child: child,
    );
  }
}

//Tertiary
class TertiaryThemedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final double? height;
  final double? width;

  const TertiaryThemedContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.border,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkTertiary : AppColors.lightTertiary,
        borderRadius: borderRadius ?? BorderRadius.circular(15),
        border: border,
      ),
      child: child,
    );
  }
}

//Squared Boxed Container
class SquaredBoxedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final double? height;
  final double? width;
  final double? borderWidth;
  final bool bordered;

  const SquaredBoxedContainer({
    super.key,
    required this.child,
    required this.bordered,
    this.padding,
    this.margin,
    this.borderRadius,
    this.border,
    this.height,
    this.width,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: height,
      width: width,
      margin: margin ?? const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkTertiary : AppColors.lightTertiary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}

//Data Tile
class DataTile extends StatelessWidget {
  final String title;
  final int value;
  final String unit;
  final IconData iconData;

  const DataTile({
    super.key,
    required this.title,
    required this.unit,
    required this.value,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: isDark ? AppColors.darkTertiary : AppColors.lightTertiary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            iconData,
            color: isDark ? AppColors.darkSecondary : AppColors.lightSecondary,
          ),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(
              "$value $unit",
              style: TextStyle(
                color: isDark
                    ? AppColors.darkSecondary
                    : AppColors.lightPrimary,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//Radio Tile
class BorderedRadioTile extends StatelessWidget {
  final Widget title;
  final Object value;
  final double? height;
  final double? width;
  final Widget? subtitle;
  final EdgeInsetsGeometry? padding;
  final Object groupValue;
  final void Function(Object?)? onChanged;

  const BorderedRadioTile({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.height,
    this.width,
    this.padding,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: padding ?? const EdgeInsets.all(5),
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: isDark ? AppColors.darkTertiary : AppColors.lightTertiary,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: RadioListTile(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: isDark ? AppColors.darkPrimary : AppColors.lightPrimary,
        controlAffinity: ListTileControlAffinity.trailing,
        title: title,
        subtitle: subtitle,
      ),
    );
  }
}

//Profile Picture
class ProfilePicture extends StatelessWidget {
  final double? height;
  final double? width;
  final double? fontSize;
  const ProfilePicture({super.key, this.height, this.width, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height ?? 150,
        width: width ?? 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.darkPrimary,
        ),
        child: Center(
          child: Text("A", style: TextStyle(fontSize: fontSize ?? 48)),
        ),
      ),
    );
  }
}
