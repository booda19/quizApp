import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appbarr extends StatelessWidget implements PreferredSizeWidget {
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final String titleText;
  final Color? leadingColor;
  final Color? trailingColor;
  final VoidCallback? onLeadingPressed;
  final VoidCallback? onTrailingPressed;
  final Color? backgroundColor;

  const Appbarr({
    super.key,
    this.leadingIcon,
    this.trailingIcon,
    required this.titleText,
    this.leadingColor = Colors.blueGrey,
    this.trailingColor = Colors.amber,
    this.onLeadingPressed,
    this.onTrailingPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              leadingIcon ?? Icons.bar_chart,
              color: leadingColor,
            ),
            onPressed: onLeadingPressed,
          ),
          Text(
            titleText,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          IconButton(
            icon: Icon(
              trailingIcon ?? Icons.notifications,
              color: trailingColor,
            ),
            onPressed: onTrailingPressed,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}