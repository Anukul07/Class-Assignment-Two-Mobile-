import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'arithmetic_event.dart';

class ArithmeticBloc extends Bloc<ArithmeticEvent, int> {
  ArithmeticBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      final result = event.first + event.second;
    });
    on<DecrementEvent>((event, emit) {
      final result = event.first + event.second;
    });
    on<MultiplyEvent>((event, emit) {
      final result = event.first + event.second;
    });
  }
}
