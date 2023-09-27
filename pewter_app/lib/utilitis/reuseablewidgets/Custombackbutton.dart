import 'package:flutter/material.dart';

import '../colors.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback ontap;

  const CustomBackButton({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            color: AppTheme.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}