import 'package:flutter/material.dart';
import 'package:responsive_design/features/custom_bottom_sheet/custom_bottomSheet.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  void showCustomBottomSheet(BuildContext context, List<String> items) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5, // Adjust the initial size as needed
          minChildSize: 0.2, // Minimum height
          maxChildSize: 0.8, // Maximum height
          expand: false,
          builder: (context, scrollController) {
            return CustomBottomSheetScreen(items: items);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(20, (index) => 'Item $index');
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => showCustomBottomSheet(context, items),
          child: const Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
