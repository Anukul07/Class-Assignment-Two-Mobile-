import 'package:class_assignment_two/cubit/background_color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BackgroundColorView extends StatelessWidget {
  const BackgroundColorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BackgroundColorCubit(),
      child: BlocBuilder<BackgroundColorCubit, Color>(
        builder: (context, backgroundColor) {
          return Scaffold(
            backgroundColor: backgroundColor,
            appBar: AppBar(
              title: const Text(
                "Background Color Changer",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              backgroundColor: const Color.fromARGB(255, 144, 139, 152),
              centerTitle: true,
            ),
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<BackgroundColorCubit>().changeColor();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 178, 177, 181),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Change Background Color",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
