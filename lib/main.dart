import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/custom_bottom_sheet/home_scree.dart';
import 'package:responsive_design/presentation/display_chart/model/student_attendenceModel.dart';
import 'package:responsive_design/presentation/display_chart/student_attendence_Tracker_screen.dart';
import 'package:responsive_design/presentation/draggable_container/draggable_screen.dart';
import 'package:responsive_design/presentation/navigation_bar/navigation_bar_screen.dart';
import 'package:responsive_design/presentation/snackbar/snackbar.dart';

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
      home: NavigationBarScreen(),

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
