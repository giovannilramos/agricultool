import 'dart:ui';

import 'package:AgricuTool/components/graphic_moisture_day.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GraphicPage extends StatefulWidget {
  const GraphicPage({Key? key}) : super(key: key);

  @override
  State<GraphicPage> createState() => _GraphicPageState();
}

class _GraphicPageState extends State<GraphicPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            /////////////////////////////////
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 244, 244, 244),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'GRÁFICO DE UMIDADE',
                                  style: TextStyle(
                                    fontFamily: 'Canada',
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(1.0, 1.0),
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      ' MÉDIA ',
                                      style: TextStyle(
                                        fontFamily: 'Canada',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(180, 16, 147, 177),
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(1.0, 1.0),
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      ' MÁXIMO ',
                                      style: TextStyle(
                                        fontFamily: 'Canada',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 2, 166, 7),
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(1.0, 1.0),
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      ' MÍNIMO ',
                                      style: TextStyle(
                                        fontFamily: 'Canada',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(1.0, 1.0),
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          GraphicMoistureDay(),
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: const <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 30.0,
                                      offset: Offset(0.0, 0.75))
                                ],
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            height: 350,
                            width: double.infinity,
                          ),
                          //////
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: const <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 30.0,
                                      offset: Offset(0.0, 0.75))
                                ],
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15)),
                            height: 350,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
            /////////////////////////////
          ],
        ),
      ),
    );
  }
}
