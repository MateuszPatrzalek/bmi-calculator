import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain{

  CalculatorBrain({required this.weight, required this.height});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if(_bmi >= 30){
      return 'Obesity';
    }
    else if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 30){
      return 'See your doctor! This is a serious disease.';
    }
    else if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job!';
    }
    else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  Color textColor(){
    if(_bmi >= 30){
      return Colors.red.shade900;
    }
    else if(_bmi >= 25){
      return Colors.red;
    }
    else if(_bmi > 18.5){
      return Color(0xFF24D876);
    }
    else{
      return Colors.yellow;
    }
  }
}