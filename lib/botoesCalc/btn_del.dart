import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class BtnDel extends StatelessWidget {

  const BtnDel({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       // ignore: sized_box_for_whitespace
       return Container(
        height: MediaQuery.of(context).size.width * 0.10,
        width: MediaQuery.of(context).size.width * 0.21,
        child: const RiveAnimation.asset(
          'assets/btn_calc/del.riv',
          stateMachines: ['anime'],
          fit: BoxFit.cover,
        ));
  }
}