import 'package:calculator_app/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        userinput.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        answer.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                            title: 'AC',
                            onPress: () {
                              userinput = '';
                              answer = '';
                              setState(() {});
                            }),
                        MyButton(title: '+/-', onPress: () {
                           userinput += '+/-';
                          
                              setState(() {});
                        }),
                        MyButton(title: '%', onPress: () {
                           userinput += '%';
                          
                              setState(() {});
                        }),
                        MyButton(
                            title: '/',
                            color: const Color(0xffffa00a),
                            onPress: () {
                               userinput += '/';
                          
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            title: '7',
                            onPress: () {
                              userinput += '7';
                              setState(() {});
                            }),
                        MyButton(
                            title: '8',
                            onPress: () {
                              userinput += '8';
                              setState(() {});
                            }),
                        MyButton(title: '0', onPress: () {
                           userinput += '0';
                          
                              setState(() {});
                        }),
                        MyButton(
                            title: 'x',
                            color: const Color(0xffffa00a),
                            onPress: () {
                               userinput += '*';
                          
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '4', onPress: () {
                           userinput += '4';
                          
                              setState(() {});
                        }),
                        MyButton(title: '5', onPress: () {
                           userinput += '5';
                          
                              setState(() {});
                        }),
                        MyButton(title: '6', onPress: () {
                           userinput += '6';
                          
                              setState(() {});
                        }),
                        MyButton(
                            title: '-',
                            color: const Color(0xffffa00a),
                            onPress: () {
                               userinput += '-';
                          
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '1', onPress: () {
                           userinput += '1';
                          
                              setState(() {});
                        }),
                        MyButton(title: '2', onPress: () {
                           userinput += '2';
                          
                              setState(() {});
                        }),
                        MyButton(title: '3', onPress: () {
                           userinput += '3';
                          
                              setState(() {});
                        }),
                        MyButton(
                            title: '+',
                            color: const Color(0xffffa00a),
                            onPress: () {
                               userinput += '+';
                          
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '0', onPress: () {
                           userinput += '0';
                          
                              setState(() {});
                        }),
                        MyButton(title: '-', onPress: () { userinput += '-';
                          
                              setState(() {});}),
                        MyButton(title: 'DEL', onPress: () {
                           userinput += 'DEL';
                          
                              setState(() {});
                        }),
                        MyButton(
                            title: '=',
                            color: const Color(0xffffa00a),
                            onPress: () {
                               equalPress();
                               setState(() {
                                 
                               });
                               
                              setState(() {});
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void equalPress(){
  
    Parser p =Parser();
    Expression expression=p.parse(userinput);
    ContextModel contextModel=ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
    answer=eval.toString();
  }
}
