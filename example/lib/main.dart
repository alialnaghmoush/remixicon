import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Remix Icons v4.5.0 Plugin'),
        ),
        body: Center(
          child: Icon(
            Remix.account_box_2_line,
            size: 64,
            color: Colors.grey.shade900,
          ),
        ),
      ),
    );
  }
}
