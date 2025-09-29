import 'package:flutter/material.dart';
import 'package:haptics_demo/haptic/haptic.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Haptic haptic = Haptic();

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('Hello World!'),

              ElevatedButton(
                onPressed: () {
                  haptic.triggerHaptic(HapticType.success);
                },
                child: Text('Haptic Sample'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
