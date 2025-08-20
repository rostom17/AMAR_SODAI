import 'package:amar_sodai/core/theme/app_colors.dart';
import 'package:amar_sodai/features/common/presentation/widgets/custom_back_button.dart';
import 'package:amar_sodai/features/common/presentation/widgets/custom_notification_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreenHeader extends StatelessWidget {
  const CategoryScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.h, right: 16.h, left: 16.h),
      decoration: BoxDecoration(color: AppColors.backgroundColor),
      child: Column(
        children: [
          Row(
            children: [
              CustomBackButton(onTap: () {}),
              const Spacer(),
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 18.h,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              CustomNotificationButton(onTap: () {}),
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
