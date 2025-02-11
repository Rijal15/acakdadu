import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:acak_dadu/contect.dart';

class GradientContainer extends StatelessWidget { 
 GradientContainer(this.color1,this.color2,  {super.key});

  final Color color1; // membuat variabel bertipe color dengan nama color1
  final Color color2; // membuat variabel bertipe color dengan nama color2

// fungsi acakDadu yang di panggil ketika button di_klik
  void acakDadu() {
  var activeDiceImage ='assest/dice-4.png';

  void rollDice() {
    activeDiceImage = 'assest/dice-5.png';
  }

   //isi dari fungsi acak dadu

  }

  //widget
  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[ 
              color1,color2
            ], begin: Alignment.topRight,
               end: Alignment.bottomLeft,
             )
          ),
           child: Center(
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
                DiceRoller()
              ],
            ),
          ),
        );
  }
}
