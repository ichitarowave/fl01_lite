import 'package:flutter/material.dart';
import 'dart:math';

class OmikuziPage extends StatefulWidget {
  const OmikuziPage({Key? key}): super(key: key);

  @override
  State<OmikuziPage> createState() => _OmikuziPageState();
}

class _OmikuziPageState extends State<OmikuziPage> {
  String myHand = '大吉';
  String computerHand = '大吉';

  void selectHand(String selectedHand) {
    myHand = selectedHand;
    godHand();
    setState((){});
  }
  void godHand() {
    final randomNumber = Random().nextInt(5);
    computerHand = RandomNumberGotGod(randomNumber);
  }
  String RandomNumberGotGod(int randomNumber) {
    switch (randomNumber) {
      case 0:
        return '大吉';
      case 1:
        return '中吉';
      case 2:
        return '小吉';
      case 3:
        return '吉';
      case 4:
        return '凶';
      default:
        return '大吉';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: const Text('おみくじ',
          style: TextStyle(color: Colors.black),),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              computerHand,
              style: const TextStyle(
                fontSize: 155,
              ),
            ),
            const SizedBox(
              height: 56,
            ),
            ElevatedButton(
              onPressed: () {
                selectHand('大吉');
              },
              child: const Text('今日の貴公の運勢'),
            ),
          ],
        ),
      ),
    );
  }
}

