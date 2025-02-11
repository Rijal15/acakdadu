import 'package:acak_dadu/contect.dart';
import 'package:acak_dadu/contect2.dart';
import 'package:acak_dadu/contect3.dart';
import 'package:flutter/material.dart';
import 'gradient_container.dart';
void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
               Tab(text: '1 dadu'),
               Tab(text: '2 dadu'),
               Tab(text: '3 dadu'),
              ],
            ),
            title: const Text('Tab Dadu'),
          ),
          body: const TabBarView(
            children: [
              DiceRoller(),
              DiceRolled(),
              DiceRover(),
            ],
          ),
        ),
      ),
    );
  }
}
