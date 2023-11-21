import 'package:emprega_ribamar/views/anime/splash_sceeen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EmpregaRibamarApp());
}

class EmpregaRibamarApp extends StatelessWidget {
  const EmpregaRibamarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emprega Ribamar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SplashScreen(), // Inicie com a SplashScreen
    );
  }
}
