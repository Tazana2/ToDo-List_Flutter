import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 25,
          )
        ),
      ),
      home: const HomePage(),
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
        title: const Text('Rafa_List | By: Juanky y Dani'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Rafa List',
                  applicationVersion: '0.0.2',
                  applicationIcon: const Icon(Icons.pets_rounded),
                  children: <Widget>[
                    const Text('En esta app puedes agregar tus tareas pendientes y cuando las completes tacharlas o simplemente eliminarlas y posteriormente agregar nuevas.'),
                  ],
                );
              },
              child: const Icon(Icons.info),
            ),
          ),
        ],
      ),
    );
  }
}
