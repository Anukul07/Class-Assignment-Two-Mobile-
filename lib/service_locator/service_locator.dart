import 'package:class_assignment_two/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_two/cubit/background_color_cubit.dart';
import 'package:class_assignment_two/cubit/dashboard_cubit.dart';
import 'package:class_assignment_two/cubit/simple_interest_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
Future<void> initDependencies() async {
  _initCubit();
}

void _initCubit() {
  serviceLocator
      .registerLazySingleton<AreaOfCircleCubit>(() => AreaOfCircleCubit());
  serviceLocator.registerLazySingleton<BackgroundColorCubit>(
      () => BackgroundColorCubit());
  serviceLocator
      .registerLazySingleton<SimpleInterestCubit>(() => SimpleInterestCubit());
  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
