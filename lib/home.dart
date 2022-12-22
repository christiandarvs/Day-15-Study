import 'package:flutter/material.dart';
import 'package:practice/app_drawer.dart';
import 'package:practice/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Day 15 - Study'),
          centerTitle: true,
          elevation: 0,
        ),
        drawer: const AppDrawer(),
        body: const HomeContents(),
      ),
    );
  }
}
