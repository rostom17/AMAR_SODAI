import 'package:amar_sodai/features/dashboard/presentation/bloc/bottom_nav_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocProviders {
  static List<BlocProvider> blocProviders = [
    BlocProvider<BottomNavCubit>(create: (_) => BottomNavCubit()),
  ];
}
