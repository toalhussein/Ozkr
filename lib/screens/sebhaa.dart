import 'package:flutter/material.dart';
import 'package:iti_final_project/components/zkr_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sebhaa extends StatefulWidget {
  @override
  State<Sebhaa> createState() => _SebhaaState();
}

class _SebhaaState extends State<Sebhaa> {
  int zkr = 0;
  int Sumzkr = 0;

  @override
  void initState() {
    super.initState();
    loadSumzkr();
  }

  Future<void> loadSumzkr() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      Sumzkr = prefs.getInt('Sumzkr') ?? 0;
    });
  }

  Future<void> saveSumzkr() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('Sumzkr', Sumzkr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA4593C),
        title: ZkrText(txt: 'تسبيح', size: 18),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Center(child: ZkrText(txt: '$zkr', size: 30, color: Color(0xffA4593C))),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: Color(0xffA4593C)),
              ),
            ),
          ),
          ZkrText(txt: 'مجموع التسبيحات: $Sumzkr', color: Colors.black, size: 20),
          Padding(
            padding: const EdgeInsets.only(left: 280),
            child: GestureDetector(
              onTap: () {
                Sumzkr += zkr;
                zkr = 0;
                setState(() {});
                saveSumzkr();
              },
              child: const CircleAvatar(
                radius: 33,
                backgroundColor: Color(0xffA4593C),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffFBECDA),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              zkr++;
              setState(() {});
            },
            child: const CircleAvatar(
              radius: 130,
              backgroundColor: Color(0xffA4593C),
            ),
          )
        ],
      ),
    );
  }
}