import "package:flutter/material.dart";

class ExamplesThree extends StatefulWidget {
  const ExamplesThree({super.key});

  @override
  State<ExamplesThree> createState() => _ExamplesThreeState();
}

class _ExamplesThreeState extends State<ExamplesThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 110, 114, 117),
        title: const Text('GetX examples_three.dart'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
