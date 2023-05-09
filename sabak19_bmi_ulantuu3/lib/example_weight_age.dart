import 'package:flutter/material.dart';

class WeightAge1 extends StatefulWidget {
  const WeightAge1({super.key});

  @override
  State<WeightAge1> createState() => _WeightAge1State();
}

class _WeightAge1State extends State<WeightAge1> {
  int incremet = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeightAge'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$incremet'),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    incremet++;
                    print(1);
                  });
                },
                child: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
