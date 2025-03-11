import 'package:bmicalculator/widgets/custom-button.dart';
import 'package:flutter/material.dart';

class Resultview extends StatelessWidget {
  const Resultview({super.key, required this.interpretation,
        required this.bmiResult,
        required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      appBar: AppBar(
        backgroundColor: Color(0xFF24263B),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Your Result",
                    style: TextStyle(fontSize: 40, color: Color(0xFFFFFFFF),fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 503,
                    width: 319,
                    decoration: BoxDecoration(
                      color: Color(0xFF333244),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 24,
                        child: Text(resultText, style: TextStyle(fontSize: 20, color: Color(0xFF21BF73),fontWeight:FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 77,
                        width: 132,
                        child: Text(bmiResult, style: TextStyle(fontSize: 64, color: Color(0xFFFFFFFF),fontWeight:FontWeight.bold)),
                      ),
                      SizedBox(
                        width: 251,
                        child: Text(interpretation, style: TextStyle(fontSize: 16, color: Color(0xFF8B8C9E),fontWeight:FontWeight.w500),textAlign:TextAlign.center),
                      ),
                    ],
                    ),
                  ),
                ],
              ),
            CustomButton2(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}