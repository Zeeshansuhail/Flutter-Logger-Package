import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Loggerpage1 extends StatelessWidget {
  final logger = Logger();

  Loggerpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Looger Page 1'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Click on + button'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logger.v('Level.verbose');
          logger.d('Level.debug');
          logger.i('Level.info');
          logger.w('Level.warning');
          logger.e('Level.error');
          logger.wtf('Level.wtf');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
