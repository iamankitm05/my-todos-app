import 'package:flutter/material.dart';

void showSnackBarAlert({
  required BuildContext context,
  required String message,
  required Color color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
      backgroundColor: color,
    ),
  );
}
