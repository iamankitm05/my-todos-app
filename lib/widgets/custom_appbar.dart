import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todos_app/routes/routes_constant.dart';

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
          itemBuilder: (context) => _buildMenuItems(context: context),
        )
      ],
    );
  }

  List<PopupMenuEntry> _buildMenuItems(
      {required BuildContext context}) {
    return [
      PopupMenuItem(
        onTap: () {
          context.goNamed(RouteNameConstant.login);
        },
        child: const Row(
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
