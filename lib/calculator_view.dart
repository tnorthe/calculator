import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String equation = '0';
  String result = '0';
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String  buttonText){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        leading: const Icon(Icons.settings, color:Colors.blue),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text('DEG', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(result,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 80,
                              color: Colors.white)),
                        ),
                        const Icon(Icons.more_vert, color: Colors.orange, size: 30),
                        const SizedBox(width: 20),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          ]
        ),
      )
    );
  }
}