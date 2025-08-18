import 'package:amar_sodai/features/dashboard/presentation/widgets/home_screen_appbar.dart';
import 'package:amar_sodai/features/dashboard/presentation/widgets/home_screen_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeScreenAppbar(),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 16.h, right: 16.h),
            child: HomeScreenBody(),
          ),
        ],
      ),
    );
  }
}
