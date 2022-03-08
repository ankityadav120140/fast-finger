// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int f2 = 25, f1 = 25;
  int s1 = 0, s2 = 0;

  void check(int f1, int f2) {
    if (f1 == 0) {
      s1++;
      initState();
    }
    if (f2 == 0) {
      s2++;
      initState();
    }
  }

  @override
  void initState() {
    f2 = 25;
    f1 = 25;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    f1--;
                    f2++;
                    check(f1, f2);
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.symmetric(vertical: 37),
                  color: Color(0x007cfc00),
                  child: Center(
                    child: Text(
                      "PLAYER 1 : $s1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: f1,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Color.fromARGB(161, 68, 236, 68),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Color.fromARGB(161, 68, 236, 68),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: f2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Color.fromARGB(161, 68, 236, 68),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Color.fromARGB(161, 68, 236, 68),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    f2--;
                    f1++;
                    check(f1, f2);
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.symmetric(vertical: 37),
                  color: Color(0x007cfc00),
                  child: Center(
                    child: Text(
                      "PLAYER 2 : $s2",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
