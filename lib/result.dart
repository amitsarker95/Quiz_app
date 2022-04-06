import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore ;


  Result(this.finalScore);

  String get resultPrint{
    String resultText = 'No more question left . You have done it !';
    if(finalScore <= 70){
      resultText ='You\'r score is $finalScore';
    }else if (finalScore <= 80){
      resultText ='You\'r score is $finalScore';
    }else if(finalScore <= 90){
      resultText ='You\'r score is $finalScore';
    }else if(finalScore <= 100){
      resultText ='You\'r score is $finalScore';
    }else{
      resultText = 'You\'r score is average $finalScore';
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPrint,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          backgroundColor: Colors.brown,
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
      ),
    );
  }
}
