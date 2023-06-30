import 'package:flutter/material.dart';

import 'custom_logger.dart';

class Loggerpage3 extends StatelessWidget {
  final log = logger(Loggerpage3);

  Loggerpage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Looger Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                log.v('Vebose log');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  fixedSize: const Size(double.infinity, 40)),
              child: const Text('Verbose'),
            ),
            ElevatedButton(
              onPressed: () {
                log.d('Debug Log');
              },
              child: const Text('Debug'),
            ),
            ElevatedButton(
              onPressed: () {
                log.i('Info Log');
              },
              child: const Text('Info'),
            ),
            ElevatedButton(
              onPressed: () {
                log.w('Warning Log');
              },
              child: const Text('Warning'),
            ),
            ElevatedButton(
              onPressed: () {
                log.e('Error Log');
              },
              child: const Text('Error'),
            ),
            ElevatedButton(
              onPressed: () {
                log.wtf('Wtf Log');
              },
              child: const Text('WTF'),
            ),
          ],
        ),
      ),
    );
  }
}
