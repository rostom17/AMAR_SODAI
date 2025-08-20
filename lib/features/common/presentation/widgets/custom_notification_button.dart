import 'package:amar_sodai/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotificationButton extends StatelessWidget {
  const CustomNotificationButton({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: 45.w,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.backgroundColor2.withAlpha(150),
        ),
        child: Icon(CupertinoIcons.bell, color: Colors.white),
      ),
    );
  }
}
