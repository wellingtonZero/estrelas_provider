import 'package:calculadoradivertida/nivel_mais.dart';
import 'package:calculadoradivertida/nivel_menos.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ESCOLHA A OPERAÇÃO')),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const NivelMais(),
                          ),
                        );
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 100,
                        height: 100,
                        child: const RiveAnimation.asset(
                          'assets/btnMais.riv',
                          stateMachines: ['menumais'],

                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NivelMenos(),
                          ),
                        );
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 100,
                        height: 100,
                        child: const RiveAnimation.asset(
                          'assets/btnMenos.riv',
                          stateMachines: ['menumenos'],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
