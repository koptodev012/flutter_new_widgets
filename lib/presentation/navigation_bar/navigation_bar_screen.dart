import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:responsive_design/presentation/custom_bottom_sheet/custom_bottomSheet.dart';
import 'package:responsive_design/presentation/draggable_container/draggable_screen.dart';
import 'package:responsive_design/presentation/snackbar/snackbar.dart';
import 'package:responsive_design/presentation/video_player/video_player_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    SnackbarScreen(),
    VideoPlayerScreen(),
    DraggableScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Molten Navigation Bar Example')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MoltenBottomNavigationBar(
        barColor: Color(0xff222731),
        domeCircleColor: Color(0xff02B8D5),
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        tabs: [
          MoltenTab(
            icon: Icon(Icons.home),
          ),
          MoltenTab(
            icon: Icon(Icons.search),
          ),
          MoltenTab(
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
