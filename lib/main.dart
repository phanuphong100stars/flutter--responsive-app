import 'package:flutter/material.dart';
import 'package:responsive_app/layouts/mobile/desktop_layout.dart';
import 'package:responsive_app/layouts/mobile/mobile_layout.dart';
import 'package:responsive_app/layouts/mobile/tablet_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Responsive Flutter Demo '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const int mobileScreenSize = 768;
    const int tabletScreenSize = 976;
    // const int desktopScreenSize = 976;

    // final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth <= mobileScreenSize) {
            return const MobileLayout();
          }

          if (constraints.maxWidth <= tabletScreenSize) {
            return const TabletLayout();
          }

          return const DesktopLayout();
        }));
  }
}
