import 'package:flutter/material.dart';
import 'package:iti_final_project/screens/Ayat.dart';
import 'package:iti_final_project/screens/ala7adis.dart';
import 'package:iti_final_project/screens/sebhaa.dart';
import '../components/main_card.dart';
import 'sabah_massa.dart';


class homeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              mainCard(const Icon(Icons.sunny),
                  'اذكار صباح ومساء',
                      (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>  SabahMassa()));
                        }
              ),
              mainCard(const Icon(Icons.mosque),
                  'احاديث',
                      (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  Hadis()));
                  }
              ),
              mainCard(const Icon(Icons.book),
                  'ايات',
                      (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  Ayat()));
                  }
              ),
              mainCard(const Icon(Icons.timer),
                  'تسبيح',
                      (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  Sebhaa()));
                  }
              ),
            ],
          ),
        ),
      );
  }



}
