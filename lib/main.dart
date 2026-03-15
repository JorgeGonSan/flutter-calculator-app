import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double numero1 = 0;
  double numero2 = 0;
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Calculadora simple")),
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Numero 1",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          numero1 = double.parse(value);
                        } else {
                          numero1 = 0;
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Numero 2",
                        border: OutlineInputBorder(),
                      ),

                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          numero2 = double.parse(value);
                        } else {
                          numero2 = 0;
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resultado = numero1 + numero2;
                        });
                      },
                      child: Text("Sumar"),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("El resultado es: $resultado  "),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
