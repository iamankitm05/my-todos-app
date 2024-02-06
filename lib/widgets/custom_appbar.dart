import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? titleSpacing;
  const CustomAppBar({
    super.key,
    this.titleSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      title: const Text('My Todos'),
      titleSpacing: titleSpacing,
      actions: [
        PopupMenuButton(
          itemBuilder: (context) => _buildMenuItems(items: []),
        )
      ],
    );
  }

  List<PopupMenuEntry> _buildMenuItems(
      {required List<Map<String, dynamic>> items}) {
    return [
      const PopupMenuItem(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Logout'),
            Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ],
        ),
      )
    ];
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
