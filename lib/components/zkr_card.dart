import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'zkr_text.dart';

class ZkrCard extends StatefulWidget {
  final String zkr;
  final int initialCounter;
  final String Name;

  ZkrCard({required this.zkr, this.initialCounter = 3, this.Name = ''});

  @override
  _ZkrCardState createState() => _ZkrCardState();
}

class _ZkrCardState extends State<ZkrCard> {
  late int counter;

  @override
  void initState() {
    super.initState();
    counter = widget.initialCounter;
  }

  void decrementCounter() {
    setState(() {
      if (counter <= 0) {
        counter = 0;
      } else {
        counter--;
      }
    });
  }

  void copyToClipboard() {
    Clipboard.setData(ClipboardData(text: widget.zkr));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Copied to clipboard'),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    final displayText = widget.Name.isNotEmpty ? widget.Name : '$counter';

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 130,
                  height: 40,
                  child: Card(
                    shadowColor: const Color(0xffA4593C),
                    elevation: 1, 
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: const Color(0xffA4593C),
                    child: Center(
                      child: ZkrText(txt: displayText, size: 16.5),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 40,
                  child: InkWell(
                    onTap: copyToClipboard,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: const Color(0xffFBECDA),
                      child: const Center(
                        child: Icon(
                          Icons.copy,
                          color: Color(0xffA4593C),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  decrementCounter();
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffA4593C)),
                      color: const Color(0xffFBECDA),
                      borderRadius: BorderRadius.circular(13)),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(widget.zkr,
                        style: const TextStyle(
                            fontFamily: 'AmiriQuran',
                            fontSize: 20,
                            color: Color(0xffA4593C))),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
