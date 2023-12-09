import 'package:flutter/material.dart';

class Utils {
  static Future<void> showSnakbar({
    required String title,
    required BuildContext context,
    Color? color,
  }) async {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: color ?? Colors.red,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(20),
      content: Center(
        child: Text(title),
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

void dismissKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);

  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}

String? validateRequired(val, {errorText = "This field is required"}) {
  if (val.length == 0) {
    return errorText;
  }
  if (val.length > 0) {
    if (val.length < 3) {
      return "Enter atleast 3 characters";
    }
  }

  return null;
}
