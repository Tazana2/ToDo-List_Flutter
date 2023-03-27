import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List - Juanky y Dani :D'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Icon(Icons.info_outline_rounded),
          ),
        ],
      ),
      body: const AboutDialog(
        applicationName: 'Rafa List',
        applicationVersion: '0.0.1',
        applicationIcon: Icon(Icons.pets_rounded),
        applicationLegalese:
            'Esta es una pequeña aplicación para listar tareas pendientes y tal.',
      ),
    );
  }
}
