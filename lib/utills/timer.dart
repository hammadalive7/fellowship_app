import 'package:flutter/material.dart';
import 'dart:async';

class TimerWidget extends StatefulWidget {
  bool isEnabled = false;
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _secondsRemaining = 59;
  late Timer _timer;
  // bool isEnabled = true;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  int get remainingSeconds => _secondsRemaining;
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          widget.isEnabled = false;
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '00:$_secondsRemaining',
      style: TextStyle(fontSize: 12),
    );
  }
}
