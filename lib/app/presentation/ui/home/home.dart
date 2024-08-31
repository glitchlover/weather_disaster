library home;
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ResponsiveBuilder(
        builder: (context, sizing) {
          return const Center(
            child: Text('Scaffold Body'),
          );
        }
      ),
    );
  }
}