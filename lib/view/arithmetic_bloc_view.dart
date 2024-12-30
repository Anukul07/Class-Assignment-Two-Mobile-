import 'package:flutter/material.dart';

class ArithmeticBlocView extends StatelessWidget {
  const ArithmeticBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNumberController = TextEditingController();
    final TextEditingController secondNumberController =
        TextEditingController();

    int? parseInput(String input) {
      return int.tryParse(input);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Bloc"),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "First Number",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Second Number",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Result: ",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Subtract"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Multiply"),
            ),
          ],
        ),
      ),
    );
  }
}
