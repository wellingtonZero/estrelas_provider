import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  StateMachineController? controller;
  SMIInput<bool>? um;
  SMIInput<double>? teclado;
  //Artboard? _riveArtboard;
  @override
  Widget build(BuildContext context) {
    

    return Align(
      alignment: const AlignmentDirectional(0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                //width: 222,
                width: MediaQuery.of(context).size.width * 0.7,
                //height: 380,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Stack(children: [
                  Align(
                    child: RiveAnimation.asset(
                      'assets/bodycalc.riv',
                      stateMachines: ['anime'],
                      onInit: (artboard) {
                        controller = StateMachineController.fromArtboard(
                          artboard,
                          'anime',
                        );
                        if (controller == null) return;
                        artboard.addController(controller!);
                        um = controller?.findInput('um');
                        teclado = controller?.findInput('teclado');
                        teclado?.change(1);
                      },
                    ),
                  ),
                  
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
