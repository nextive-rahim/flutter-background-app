import 'dart:async';

import 'package:flutter/foundation.dart';

import 'counter.dart';

class CounterService {
  factory CounterService.instance() => _instance;

  CounterService._internal();

  static final _instance = CounterService._internal();

  final _counter = Counter();

  ValueListenable<int> get count => _counter.count;

  void startCounting() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _counter.increment();
      print(
          'Counter incrementedssssssssssssssssssssssssssssssssss: ${_counter.count.value}');
    });
    // Stream.periodic(Duration(seconds: 1)).listen((_) {
    //   _counter.increment();
    //   print('Counter incremented: ${_counter.count.value}');
    // });
  }
}
