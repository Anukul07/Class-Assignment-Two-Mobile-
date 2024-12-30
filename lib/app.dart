import 'package:class_assignment_two/cubit/dashboard_cubit.dart';
import 'package:class_assignment_two/service_locator/service_locator.dart';
import 'package:class_assignment_two/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider<AreaOfCircleCubit>(create: (context) => serviceLocator()),
    //     BlocProvider<SimpleInterestCubit>(
    //         create: (context) => serviceLocator()),
    //     BlocProvider(
    //         create: (context) => serviceLocator<BackgroundColorCubit>()),
    //     BlocProvider(
    //       create: (context) => serviceLocator<DashboardCubit>(),
    //     ),
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: DashboardView(),
    //   ),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bloc',
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: DashboardView(),
      ),
    );
  }
}
