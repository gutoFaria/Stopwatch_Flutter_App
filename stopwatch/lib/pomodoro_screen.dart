import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stopwatch/timerservice.dart';
import 'package:stopwatch/widgets/progresswidget.dart';
import 'package:stopwatch/widgets/timecontroller.dart';
import 'package:stopwatch/widgets/timeoptions.dart';
import 'package:stopwatch/widgets/timercar.dart';
import 'utils.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          "POMOTIMER",
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            iconSize: 40,
              onPressed: () {},
              icon:const Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: const[
              SizedBox(
                height: 15,
              ),
              TimerCard(),
              SizedBox(height: 40,),
              Timeoptions(),
              SizedBox(height: 40,),
              TimeController(),
              SizedBox(height: 30,),
              ProgressWidget()
            ],
          ),
        ),
      ),
    );
  }
}
