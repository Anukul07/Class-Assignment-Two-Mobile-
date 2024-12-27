import 'package:class_assignment_two/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_two/view/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._simpleInterestCubit,
  ) : super(null);
  final SimpleInterestCubit _simpleInterestCubit;
  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _simpleInterestCubit,
                  child: SimpleInterestView(),
                )));
  }
}
