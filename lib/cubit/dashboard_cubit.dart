import 'package:class_assignment_two/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_two/cubit/background_color_cubit.dart';
import 'package:class_assignment_two/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_two/view/area_of_circle_view.dart';
import 'package:class_assignment_two/view/background_color_view.dart';
import 'package:class_assignment_two/view/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._simpleInterestCubit,
    this._areaOfCircleCubit,
    this._backgroundColorCubit,
  ) : super(null);
  final SimpleInterestCubit _simpleInterestCubit;
  final AreaOfCircleCubit _areaOfCircleCubit;
  final BackgroundColorCubit _backgroundColorCubit;
  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _simpleInterestCubit,
                  child: SimpleInterestView(),
                )));
  }

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _areaOfCircleCubit,
                  child: AreaOfCircleView(),
                )));
  }

  void openBackgroundColorView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _backgroundColorCubit,
                  child: BackgroundColorView(),
                )));
  }
}
