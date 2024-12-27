import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BackgroundColorCubit extends Cubit<Color> {
  BackgroundColorCubit() : super(Colors.blue);

  final List<Color> _colors = [Colors.blue, Colors.green, Colors.purple];
  int _currentIndex = 0;

  void changeColor() {
    _currentIndex = (_currentIndex + 1) % _colors.length;
    emit(_colors[_currentIndex]);
  }
}
