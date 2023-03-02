import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class BtnSeis extends StatelessWidget {

  const BtnSeis({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       // ignore: sized_box_for_whitespace
       return Container(
        height: MediaQuery.of(context).size.width * 0.12,
        width: MediaQuery.of(context).size.width * 0.20,
        child: const RiveAnimation.asset(
          'assets/btn_calc/seis.riv',
          stateMachines: ['anime'],
          fit: BoxFit.cover,
        ));
  }
}