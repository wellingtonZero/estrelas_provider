import 'package:calculadoradivertida/botoesCalc/btn_del.dart';
import 'package:calculadoradivertida/botoesCalc/btn_ligar.dart';
import 'package:calculadoradivertida/mover.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SomaFacil extends StatefulWidget {
  const SomaFacil({super.key});

  @override
  State<SomaFacil> createState() => _SomaFacilState();
}

class _SomaFacilState extends State<SomaFacil> {
  bool exibir = false;
  StateMachineController? controller;
  SMIInput<double>? numero;

  void iniciar() {
    Future.delayed(const Duration(seconds: 10), () {
      exibir = true;
      numero?.change(1);
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    iniciar();
  }

  @override
  void dispose() {
    controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOMA - FÁCIL'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  height: 800,
                  width: 500,
                  child: RiveAnimation.asset(
                    'assets/sala.riv',
                    fit: BoxFit.cover,
                    stateMachines: const ['inicial'],
                    onInit: (artboard) {
                      controller = StateMachineController.fromArtboard(
                        artboard,
                        'inicial',
                      );
                      if (controller == null) return;
                      artboard.addController(controller!);
                      numero = controller?.findInput('numero');
                      numero?.change(-1);
                    },
                  ),
                ),

                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.6,
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Stack(children: [
                            const Align(
                              child: RiveAnimation.asset(
                                'assets/calculadora.riv',
                              ),
                            ),
                            const Align(
                              alignment: AlignmentDirectional(0.83, -0.19),
                              child: BtnLigar(),
                            ),
                            const Align(
                              alignment: AlignmentDirectional(0.09, -0.21),
                              child: BtnDel(),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
                //Calculadora(),
                //codigo de mover objeto
                /*DraggableCard(
                  child: Visibility(
                    visible: exibir,
                    child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.transparent,
                        child: const RiveAnimation.asset(
                          'assets/olhos.riv',
                          stateMachines: ['olhos'],
                        )),
                  ),
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
