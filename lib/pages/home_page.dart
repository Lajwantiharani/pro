import 'package:flutter/material.dart';
import 'package:pro/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          // MySliverAppBar(
          //   child: const Text('Hello'),
          //   title: const Text('title'),
          // ),
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
