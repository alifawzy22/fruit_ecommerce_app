import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomModalProgressHud extends StatelessWidget {
  const CustomModalProgressHud({
    super.key,
    required this.isLoading,
    required this.child,
    this.progressIndicator,
  });
  final bool isLoading;
  final Widget child;
  final Widget? progressIndicator;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      progressIndicator: progressIndicator ?? CircularProgressIndicator(),
      inAsyncCall: isLoading,
      child: child,
    );
  }
}
