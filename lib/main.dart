import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/custom_bottom_sheet/custom_bottomSheet.dart';
import 'package:responsive_design/presentation/custom_bottom_sheet/home_scree.dart';
import 'package:responsive_design/presentation/responsive_design/responsive_design.dart';
import 'package:responsive_design/presentation/video_player/video_player_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeScreen2(),
    );
  }
}
