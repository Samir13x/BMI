import 'package:bmicalculator/models/bmi-calculator.dart';
import 'package:bmicalculator/views/result-view.dart';
import 'package:bmicalculator/widgets/control-container.dart'
    show CustomControlWidget;
import 'package:bmicalculator/widgets/custom-button.dart';
import 'package:bmicalculator/widgets/custom-gender-widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double height = 160;

  double weight = 60;

  int age = 15;

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customGenderWidget(text: "Male", image: "images/male.png"),
                customGenderWidget(text: "Female", image: "images/female.png"),
              ],
            ),
            Text(
              "Height",
              style: TextStyle(fontSize: 20, color: Color(0xFF8B8C9E)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  height.toString(),
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Text("cm", style: TextStyle(fontSize: 15, color: Colors.white)),
              ],
            ),
            Slider(
              min: 100,
              max: 250,
              value: height,
              activeColor: Color(0xFFE83D67),
              onChanged: ((double newValue) {
                setState(() {
                  height = newValue.roundToDouble();
                });
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomControlWidget(
                  text: "Weight",
                  input: weight.toString(),
                  increment: () {
                    setState(() {
                      weight++;
                    });
                  },
                  decrement: () {
                    setState(() {
                      weight--;
                    });
                  },
                ),
                CustomControlWidget(
                  text: "Age",
                  input: age.toString(),
                  increment: () {
                    setState(() {
                      age++;
                    });
                  },
                  decrement: () {
                    setState(() {
                      age--;
                    });
                  },
                ),
              ],
            ),
            CustomButton(
              text: "Calculate",
            onTap: () {
              CalculatorBrain calc =
              CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Resultview(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            ),
          ],
        ),
      ),
    );
  }
}
