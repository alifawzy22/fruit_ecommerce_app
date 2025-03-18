import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildSnackBar(
    context, String errMessage) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(errMessage),
    ),
  );
}
