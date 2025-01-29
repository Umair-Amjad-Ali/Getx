import "dart:async";

import "package:flutter/material.dart";

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int x = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        x++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print("ScreenOne build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetX'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(x.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          x++;
        });
      }),
    );
  }
}
