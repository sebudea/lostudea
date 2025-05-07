import 'package:flutter/material.dart';
import 'package:lostudea/constants/app_constants.dart';
import 'package:lostudea/routing/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.fullName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      routerConfig: router(),
    );
  }
}
