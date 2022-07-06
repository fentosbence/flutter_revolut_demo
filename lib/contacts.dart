import 'package:flutter/material.dart';
import 'dart:math' as math;

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _Contacts();
}

class _Contacts extends State<Contacts> {
  final _contactNum = 7;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _contactNum,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                              .withOpacity(1.0),
                      radius: 24,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "DR",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: const CircleAvatar(
                              radius: 8,
                              backgroundImage:
                                  AssetImage('assets/images/revolut.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3),
              ),
              Text(
                'Dávid',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        );
      },
    );
  }
}
