import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('This will be the main title of the app',
                  style: TextStyle(
                    fontSize: 22.0,
                  )),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined button pressed');
              },
              child: const Text(
                'Simple button',
                style: TextStyle(fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Rafa_Tasks'),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Rafa_Tasks',
                applicationVersion: '0.0.2',
                applicationIcon: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Icon(Icons.pets_rounded),
                ),
                applicationLegalese: 'Created by: Juany & Dani',
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      'In this app you can add tasks in a list. When you have finished them you can mark or delete them.'),
                ],
              );
            },
            child: const Icon(Icons.info),
          ),
        ),
      ],
    );
  }
}
