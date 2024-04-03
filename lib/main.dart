import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoappwithprovider/screen/tasks_screen.dart';
import 'package:todoappwithprovider/viewmodel/tasks_viewmodel.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskViewModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
