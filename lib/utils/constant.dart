import 'package:flutter/material.dart';

// / [client] para supabase instancia

/// small gap
const smallGap = SizedBox(
  height: 15,
);

/// large gap
const slargeGap = SizedBox(
  height: 30,
);

///custom snackbar
extension ShowSnackBar on BuildContext {
  void showErrorMessage(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.redAccent),
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
