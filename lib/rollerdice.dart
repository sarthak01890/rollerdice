import 'dart:math';
import 'package:flutter/material.dart';

final randomizer=Random();

class rollerdice  extends StatefulWidget{
  const rollerdice({super.key});
  @override
 State<rollerdice> createState(){
  return _rollerdiceState();
 }
}

class _rollerdiceState extends State<rollerdice> {
  var currentDiceRoll = 2;

  void rolldice() {
    setState(() {
      currentDiceRoll=randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build (context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice$currentDiceRoll.png',
          width: 200,
          height: 300,
        ),
        const  SizedBox(height: 20),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,),


                foregroundColor: Colors.white,
                textStyle: const TextStyle(

                )) ,
            child: Center(
              child: const Text("Roll dice",
                  style : TextStyle(
                      fontSize: 30,
                      color: Colors.yellow
                  )
              ),
            ))
      ],
    );
  }
}
