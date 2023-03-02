import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class BtnTres extends StatelessWidget {

  const BtnTres({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       // ignore: sized_box_for_whitespace
       return Container(
        height: MediaQuery.of(context).size.width * 0.12,
        width: MediaQuery.of(context).size.width * 0.20,
        child: const RiveAnimation.asset(
          'assets/btn_calc/tres.riv',
          stateMachines: ['anime'],
          fit: BoxFit.cover,
        ));
  }
}