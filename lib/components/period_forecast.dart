import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PeriodForecast extends StatelessWidget {
  const PeriodForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(235, 43, 159, 212),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(235, 43, 159, 212),
              Color.fromARGB(235, 94, 201, 250),
              Colors.white,
            ],
          ),
        ),
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.light_mode,
                        size: 20,
                        color: Colors.amber,
                      ),
                      Text(
                        '20°C',
                        style: TextStyle(fontFamily: 'Canada', fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        '12:00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Canada',
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.cloudy_snowing,
                        size: 20,
                        color: Color.fromARGB(255, 146, 146, 146),
                      ),
                      Text(
                        '10%',
                        style: TextStyle(fontFamily: 'Canada', fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
