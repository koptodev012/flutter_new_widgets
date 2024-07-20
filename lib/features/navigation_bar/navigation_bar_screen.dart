import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:responsive_design/features/custom_bottom_sheet/home_scree.dart';
import 'package:responsive_design/features/display_chart/model/student_attendenceModel.dart';
import 'package:responsive_design/features/display_chart/student_attendence_Tracker_screen.dart';
import 'package:responsive_design/features/draggable_container/draggable_screen.dart';
import 'package:responsive_design/features/responsive_design/responsive_design.dart';
import 'package:responsive_design/features/snackbar/snackbar.dart';
import 'package:responsive_design/features/video_player/video_player_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const SnackbarScreen(),
    const VideoPlayerScreen(),
    const DraggableScreen(),
    const HomeScreen2(),
    const HomeScreen(),
    StudentAttendenceTrackerScreen(
      students: [
        StudentAttendanceModel(name: 'Alice', attended: 8, missed: 2),
        StudentAttendanceModel(name: 'Bob', attended: 7, missed: 3),
        StudentAttendanceModel(name: 'Charlie', attended: 9, missed: 1),
        // Add more students as needed
      ],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Molten Navigation Bar Example')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MoltenBottomNavigationBar(
        barColor: const Color(0xff222731),
        domeCircleColor: const Color(0xff02B8D5),
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        tabs: [
          MoltenTab(
            icon: const Icon(Icons.info),
          ),
          MoltenTab(
            icon: const Icon(CupertinoIcons.video_camera),
          ),
          MoltenTab(
            icon: const Icon(CupertinoIcons.hand_draw),
          ),
          MoltenTab(
            icon: const Icon(CupertinoIcons.arrow_down),
          ),
          MoltenTab(
            icon: const Icon(CupertinoIcons.photo),
          ),
          MoltenTab(
            icon: const Icon(CupertinoIcons.chart_pie),
          ),
        ],
      ),
    );
  }
}
