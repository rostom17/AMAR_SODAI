import 'package:amar_sodai/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(32),
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: 45.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.backgroundColor2.withAlpha(150),
        ),
        alignment: Alignment.center,
        child: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
          size: 16,
          weight: 10,
        ),
      ),
    );
  }
}
