import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WeatherStatus extends StatefulWidget {
  const WeatherStatus({Key? key}) : super(key: key);

  @override
  State<WeatherStatus> createState() => _WeatherStatusState();
}

class _WeatherStatusState extends State<WeatherStatus> {
  bool _irrigar = true;
  bool _messageStatus = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Ink(
      child: InkWell(
        onTap: (() {
          setState(() {
            _messageStatus = !_messageStatus;
          });
          print(_messageStatus);
        }),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 245,
              width: 245,
              decoration: BoxDecoration(
                color: _irrigar ? Colors.red : Color.fromARGB(255, 55, 213, 60),
                borderRadius: BorderRadius.circular(200),
              ),
            ),
            Container(
              height: 220,
              width: 220,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(200),
              ),
            ),
            _messageStatus
                ? Container(
                    child: _irrigar
                        ? Column(
                            children: [
                              SizedBox(
                                height: 130,
                                width: 130,
                                child: Lottie.network(
                                    'https://assets2.lottiefiles.com/packages/lf20_LiAA0PLQxS.json'),
                              ),
                              const Text(
                                'PRECISA IRRIGAR',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              SizedBox(
                                height: 130,
                                width: 130,
                                child: Lottie.network(
                                    'https://assets5.lottiefiles.com/packages/lf20_sgzw5ogf.json'),
                              ),
                              const Text(
                                'NÃO PRECISA IRRIGAR',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.water_drop,
                            color: Colors.blue,
                            size: 36,
                          ),
                          Icon(
                            Icons.light_mode,
                            color: Colors.amber,
                            size: 36,
                          ),
                          Icon(
                            Icons.cloudy_snowing,
                            color: Color.fromARGB(255, 146, 146, 146),
                            size: 36,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '30%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                              color: _irrigar ? Colors.red : Colors.black,
                              fontFamily: 'Canada',
                            ),
                          ),
                          const Text(
                            '30°C',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 34,
                                fontFamily: 'Canada'),
                          ),
                          const Text(
                            '5%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 34,
                                fontFamily: 'Canada'),
                          )
                        ],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
