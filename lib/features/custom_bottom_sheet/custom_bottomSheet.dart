import 'package:flutter/material.dart';

class CustomBottomSheetScreen extends StatefulWidget {
  final List<String> items;

  const CustomBottomSheetScreen({super.key, required this.items});

  @override
  State<CustomBottomSheetScreen> createState() =>
      _CustomBottomSheetScreenState();
}

class _CustomBottomSheetScreenState extends State<CustomBottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.items[index]),
          );
        },
      ),
    );
  }
}
