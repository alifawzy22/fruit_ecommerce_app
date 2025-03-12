import 'package:flutter/material.dart';

AppBar buildAppBar({
  required String title,
  Widget? leading,
  List<Widget>? widgetsList,
}) =>
    AppBar(
      title: Text(
        title,
      ),
      leading: leading,
      actions: widgetsList,
    );
