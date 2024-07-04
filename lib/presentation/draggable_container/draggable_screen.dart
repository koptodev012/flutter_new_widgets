import 'package:flutter/material.dart';

class DraggableScreen extends StatefulWidget {
  const DraggableScreen({super.key});

  @override
  State<DraggableScreen> createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  Color caughtColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draggable Container')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Draggable<Color>(
            data: Colors.blue,
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Drag me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            feedback: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue.withOpacity(0.5),
              child: const Center(
                child: Text(
                  'Dragging',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            childWhenDragging: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.grey,
              child: const Center(
                child: Text(
                  'Original',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          DragTarget<Color>(
            onAccept: (color) {
              setState(() {
                caughtColor = color;
              });
            },
            builder: (BuildContext context, List<dynamic> accepted,
                List<dynamic> rejected) {
              return Container(
                width: 200.0,
                height: 200.0,
                color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                child: const Center(
                  child: Text(
                    'Drop here',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
