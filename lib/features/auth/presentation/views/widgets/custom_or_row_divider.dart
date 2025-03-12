import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class CustomOrRowDivider extends StatelessWidget {
  const CustomOrRowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDDDFDF),
          ),
        ),
        SizedBox(width: 18),
        Text(
          S.of(context).Or,
        ),
        SizedBox(width: 18),
        Expanded(
          child: Divider(
            color: Color(0xFFDDDFDF),
          ),
        ),
      ],
    );
  }
}
