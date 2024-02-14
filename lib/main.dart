import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Demo',
      theme: ThemeData(
   
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListTest(),
    );
  }
}

class ListTest extends StatelessWidget{
   ListTest({super.key})
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('ListView.Builder')
      ),
      body: Container(
        child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  margin: const EdgeInsetsDirectional.all(10),
                  color: Colors.amber,
                  child: const Center(child: Text('Entry')),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            )
          )
        );
      }
  }