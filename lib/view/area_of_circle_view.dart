import 'package:class_assignment_two/cubit/area_of_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleView extends StatelessWidget {
  const AreaOfCircleView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController radiusController = TextEditingController();

    double? parseInput(String input) {
      return double.tryParse(input);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Area of Circle",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 144, 139, 152),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: radiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Radius",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.deepPurple.shade50,
              ),
              onChanged: (value) {
                final double? radius = parseInput(value);
                if (radius != null) {
                  context.read<AreaOfCircleCubit>().calculateArea(radius);
                }
              },
            ),
            const SizedBox(height: 16),
            BlocBuilder<AreaOfCircleCubit, double>(
              builder: (context, state) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Area: ${state.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
