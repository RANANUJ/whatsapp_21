import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_21/chat.dart';
import 'package:whatsapp_21/first.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListScreen());
  }
}
