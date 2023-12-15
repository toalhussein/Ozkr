import 'package:flutter/material.dart';
import '../screens/sabah.dart';
import 'massa.dart';


class SabahMassa extends StatefulWidget {
  const SabahMassa({super.key});

  @override
  State<SabahMassa> createState() => _SabahMassaState();
}

class _SabahMassaState extends State<SabahMassa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
              indicatorColor: Color(0xffFBECDA),
              labelColor: Colors.white,
              tabs:[
                Tab(
                  icon: Icon(Icons.sunny),
                  text: 'أذكار الصباح',
                ),
                Tab(
                  icon: Icon(Icons.mode_night),
                  text: 'أذكار المساء',
                ),
              ]
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xffA4593C),
        ),
        body: const TabBarView(
            children: [
              SabahList(),
              MassaList(),
            ]
        ),
      ),
    );
  }
}
