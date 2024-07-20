import 'package:flutter/material.dart';
import 'package:responsive_design/features/navigation_bar/navigation_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const NavigationBarScreen(),

      //! ------------------- for using StudentAttendenceTrackerScreen ----------------

      //  StudentAttendenceTrackerScreen(
      //   students: [
      //     StudentAttendanceModel(name: 'Alice', attended: 8, missed: 2),
      //     StudentAttendanceModel(name: 'Bob', attended: 7, missed: 3),
      //     StudentAttendanceModel(name: 'Charlie', attended: 9, missed: 1),
      //     // Add more students as needed
      //   ],
      // ),

      //! -------------------------------------------------------------------------------
    );
  }
}
