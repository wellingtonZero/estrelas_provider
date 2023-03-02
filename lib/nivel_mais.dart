import 'package:calculadoradivertida/soma_facil.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class NivelMais extends StatefulWidget {
  const NivelMais({super.key});

  @override
  State<NivelMais> createState() => _NivelMaisState();
}

class _NivelMaisState extends State<NivelMais> {
  
  StateMachineController? controller;
  SMIInput<double>? nivel1Stars;
  int valor = 0;

  @override
  void dispose() {
    controller;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SELECIONE O NÍVEL')),
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
                    child: RiveAnimation.asset(
                      'assets/menuMais.riv',
                      stateMachines: const ['tela3'],
                      onInit: (artboard) {
                        controller = StateMachineController.fromArtboard(
                          artboard,
                          'tela3',
                        );
                        if (controller == null) return;

                        artboard.addController(controller!);
                        nivel1Stars = controller?.findInput('nivel1Stars');
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.05, -0.80),
                  child: GestureDetector(
                    onTap: () async {
                      final idPessoa = await Navigator.of(context).push<int>(
                        MaterialPageRoute(
                          builder: (_) => const SomaFacil(),
                        ),
                      );
                      if (idPessoa == 1) {
                        nivel1Stars?.change(1);
                      } else if (idPessoa == 2) {
                        nivel1Stars?.change(2);
                      } else if (idPessoa == 3) {
                        nivel1Stars?.change(3);
                      } else {
                        nivel1Stars?.change(0);
                      }
                      setState(() {});
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
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
