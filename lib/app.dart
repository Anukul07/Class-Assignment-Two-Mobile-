import 'package:class_assignment_two/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_two/cubit/background_color_cubit.dart';
import 'package:class_assignment_two/cubit/dashboard_cubit.dart';
import 'package:class_assignment_two/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_two/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SimpleInterestCubit()),
          BlocProvider(create: (context) => AreaOfCircleCubit()),
          BlocProvider(create: (context) => BackgroundColorCubit()),
          BlocProvider(
            create: (context) => DashboardCubit(
              context.read<SimpleInterestCubit>(),
              context.read<AreaOfCircleCubit>(),
              context.read<BackgroundColorCubit>(),
            ),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DashboardView(),
        ));
  }
}
