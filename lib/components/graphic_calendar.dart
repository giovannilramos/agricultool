import 'package:AgricuTool/components/period_forecast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GraphicCalendar extends StatelessWidget {
  const GraphicCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ComponetDay(),
          ComponetDay(),
          ComponetDay(),
          ComponetDay(),
          ComponetDay(),
          ComponetDay(),
          ComponetDay(),
        ],
      ),
    );
  }
}

class ComponetDay extends StatelessWidget {
  const ComponetDay({Key? key}) : super(key: key);

  openDetail(BuildContext context) {
    return showCupertinoModalPopup<void>(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.primary),
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        '27/03/2023',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Canada',
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: const [
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                        PeriodForecast(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(1.8),
      child: Column(
        children: [
          const Text(
            'Quinta',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Canada',
              fontSize: 24,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(4.0, 4.0),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              openDetail(context);
            },
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
              height: 130,
              width: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.light_mode,
                        size: 36,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.cloudy_snowing,
                        size: 36,
                        color: Color.fromARGB(255, 146, 146, 146),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '20°C',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Canada',
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(4.0, 4.0),
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        '10%',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Canada',
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(4.0, 4.0),
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
