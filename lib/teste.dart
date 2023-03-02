import 'package:flutter/material.dart';


class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                child: const Text('valor0'),
                onPressed: () {
                  Navigator.pop(context, 0);
                },
              ),
              TextButton(
                child: const Text('valor1'),
                onPressed: () {
                  Navigator.pop(context, 1);
                },
              ),
              TextButton(
                child: const Text('valor2'),
                onPressed: () {
                  Navigator.pop(context, 2);
                },
              ),
              TextButton(
                child: const Text('valor3'),
                onPressed: () {
                  Navigator.pop(context, 3);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
