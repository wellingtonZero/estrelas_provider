import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:calculadoradivertida/menu.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color.fromARGB(255, 0, 0, 0),
      Colors.blue,
      Colors.yellow,
      Color.fromARGB(255, 4, 221, 22),
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: const RiveAnimation.asset(
                      'assets/aberturanuven.riv',
                      stateMachines: ['nuvens'],
                      artboard: 'tela2',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.03, -0.90),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: 90,
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'Calculadora \nDivertida',
                            textAlign: TextAlign.center,
                            textStyle: const TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                            colors: colorizeColors,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: const RiveAnimation.asset(
                      'assets/abertura.riv',
                      artboard: 'abertura',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.03, -0.66),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const Menu(),
                          ),
                        );
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 120,
                        height: 120,
                        child: const RiveAnimation.asset(
                          'assets/btnIniciar.riv',
                          animations: ['click'],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
