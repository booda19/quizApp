// Rename ApppBar.dart to CustomAppBar.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      leadingWidth: 0,
      leading: const SizedBox.shrink(),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.location_on_outlined, color: Colors.blueGrey), // Better location icon
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              "61 Hopper Street, New York",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 16, // Slightly smaller for better fit
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      actions: [
        Badge(
          label: Text('3'), // Cart item count
          child: IconButton(
            onPressed: () {
              // Navigate to cart page
            },
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.green),
          ),
        ),
      ],
    );
  }

  // @override
  // // TODO: implement preferredSize
  // Size get preferredSize => throw UnimplementedError();
}