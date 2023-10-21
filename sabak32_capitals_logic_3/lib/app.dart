import 'package:flutter/material.dart';
import 'package:sabak32_capitals_logic_3/constants/app_colors.dart';
import 'package:sabak32_capitals_logic_3/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        appBarTheme: const AppBarTheme(color: AppColors.appgColor),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        sliderTheme:
            SliderThemeData(thumbShape: SliderComponentShape.noOverlay),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}