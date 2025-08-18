import 'package:amar_sodai/core/constants/app_strings.dart';
import 'package:amar_sodai/features/dashboard/presentation/bloc/bottom_nav_cubit.dart';
import 'package:amar_sodai/features/dashboard/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavWidget extends StatelessWidget {
  BottomNavWidget({super.key});

  final List<Widget> _screens = [
    HomeScreen(),
    Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.pink,
    ),
    Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.green,
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
      icon: ImageIcon(
        AssetImage(isSelected ? selectedIconPath : unSelectedIconpath,), 
      ),
      label: label,
    );
  }
}
