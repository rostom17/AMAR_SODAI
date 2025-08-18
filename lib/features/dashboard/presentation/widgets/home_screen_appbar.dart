import 'package:amar_sodai/core/theme/app_colors.dart';
import 'package:amar_sodai/features/common/presentation/widgets/custom_back_button.dart';
import 'package:amar_sodai/features/common/presentation/widgets/custom_notification_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenAppbar extends StatelessWidget {
  const HomeScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.h, right: 16.h, left: 16.h),
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          Row(
            children: [
              CustomBackButton(onTap: () {}),
              const Spacer(),
              Icon(Icons.location_on_outlined, color: Colors.white70),
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 15.h,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              CustomNotificationButton(onTap: () {}),
            ],
          ),
          Center(
            child: Text(
              "Mirpur, Bangladesh",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          SearchBar(
            trailing: [
              Icon(CupertinoIcons.search, color: AppColors.backgroundColor),
            ],
            hintText: "Serach Your Desired Item",
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
