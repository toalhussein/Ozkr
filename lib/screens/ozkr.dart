import 'package:flutter/material.dart';
import 'الرئيسية.dart';
import '../screens/sabah_massa.dart';
import 'sebhaa.dart';


class Ozkr extends StatelessWidget {
  const Ozkr({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(icon:Icon(Icons.home)),
            Tab(icon:Icon(Icons.sunny)),
            Tab(icon:Icon(Icons.timer)),
          ],
          indicatorColor: Color(0xffA4593C),
          labelColor: Color(0xffA4593C),
          unselectedLabelColor: Colors.grey,
        ),

        body: TabBarView(
          children: [
            homeApp(),
            const SabahMassa(),
            Sebhaa(),
          ],
        ),
      ),
    );
  }
}
