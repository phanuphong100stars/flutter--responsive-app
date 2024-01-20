import 'package:flutter/material.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green, height: 100, child: const Text('Tablet  Layout'));
  }
}
