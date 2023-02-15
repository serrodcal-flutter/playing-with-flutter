import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()), 
                  child: const Text('Elevated'),
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()), 
                  child: const Text('Elevated Disabled'),
                ),
                ElevatedButton.icon(
                  onPressed: () {}, 
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()), 
                  icon: const Icon(Icons.access_alarm_rounded), 
                  label: const Text('Elevated icon')
                ),
                FilledButton(
                  onPressed: () {}, 
                  child: const Text('Filled')
                ),
                FilledButton.icon(
                  onPressed: () {}, 
                  icon: const Icon(Icons.accessibility_new), 
                  label: const Text('Filled Icon')
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(shape: const StadiumBorder()), 
                  child: const Text('Outlined')
                ),
                OutlinedButton.icon(
                  onPressed: () {}, 
                  style: OutlinedButton.styleFrom(shape: const StadiumBorder()),
                  icon: const Icon(Icons.terminal), 
                  label: const Text('Outlined icon')
                ),
                TextButton(
                  onPressed: () {}, 
                  style: TextButton.styleFrom(shape: const StadiumBorder()),
                  child: const Text('Text')
                ),
                TextButton.icon(
                  onPressed: () {}, 
                  style: TextButton.styleFrom(shape: const StadiumBorder()),
                  icon: const Icon(Icons.account_box_outlined), 
                  label: const Text('Text icon')
                ),
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.app_registration_rounded),
                  // ignore: prefer_const_constructors
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.blue),
                    iconColor: const MaterialStatePropertyAll(Colors.white)
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
