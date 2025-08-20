import 'package:amar_sodai/core/constants/app_strings.dart';
import 'package:amar_sodai/core/theme/app_colors.dart';
import 'package:amar_sodai/features/cart/presentation/screens/cart_screen.dart';
import 'package:amar_sodai/features/categories/presentation/screens/category_screen.dart';
import 'package:amar_sodai/features/dashboard/presentation/bloc/bottom_nav_cubit.dart';
import 'package:amar_sodai/features/dashboard/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavWidget extends StatelessWidget {
  BottomNavWidget({super.key});

  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    Container(
      color: Colors.deepPurple,
      child: Center(child: Text("Profile Screen")),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          body: _screens[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) => context.read<BottomNavCubit>().onChangeTab(index),
            items: [
              _buildBottomNavItem(
                currentIndex: state.selectedIndex,
                itemIndex: 0,
                label: "Home",
                selectedIconPath: AppStrings.homeIconFilled,
                unSelectedIconpath: AppStrings.homeIcon,
              ),
              _buildBottomNavItem(
                currentIndex: state.selectedIndex,
                itemIndex: 1,
                label: "Categories",
                selectedIconPath: AppStrings.categoriesIconFilled,
                unSelectedIconpath: AppStrings.categoriesIcon,
              ),
              _buildBottomNavItem(
                currentIndex: state.selectedIndex,
                itemIndex: 2,
                label: "Cart",
                selectedIconPath: AppStrings.cartIconFilled,
                unSelectedIconpath: AppStrings.cartIcon,
              ),
              _buildBottomNavItem(
                currentIndex: state.selectedIndex,
                itemIndex: 3,
                label: "Profile",
                selectedIconPath: AppStrings.profileIconFilled,
                unSelectedIconpath: AppStrings.profileIcon,
              ),
            ],
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavItem({
    required String label,
    required int itemIndex,
    required int currentIndex,
    required String selectedIconPath,
    required String unSelectedIconpath,
  }) {
    final bool isSelected = itemIndex == currentIndex;
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        isSelected ? selectedIconPath : unSelectedIconpath,
        height: 24,
        width: 24,
        colorFilter: ColorFilter.mode(
          isSelected ? AppColors.backgroundColor2 : Colors.grey.shade900,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}
