import 'package:flutter/material.dart';
import 'package:flutter_logger/loggerpage_1.dart';

import 'loggerpage_2.dart';
import 'loggerpage_3.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logger'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Loggerpage1()));
                },
                child: const Text('Logger Page 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Loggerpage2()));
                },
                child: const Text('Logger Page 2')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Loggerpage3()));
                },
                child: const Text('Logger Page 3'))
          ],
        ),
      ),
    );
  }
}
