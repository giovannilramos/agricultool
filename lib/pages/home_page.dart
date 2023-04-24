import 'package:AgricuTool/components/graphic_calendar.dart';
import 'package:AgricuTool/components/weather_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime timeNow = DateTime.now();

  updatedTime() async {
    setState(() {
      timeNow = DateTime.now();
    });

    await Future.delayed(Duration(seconds: 1), updatedTime);
  }

  @override
  void initState() {
    updatedTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    updatedTime();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/fundo_platacao.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/settings');
                      },
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    Text(
                      "${timeNow.hour}" + ":" + "${timeNow.minute}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Canada',
                          fontSize: 16),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/graphic');
                      },
                      icon: const Icon(
                        Icons.query_stats,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.055,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const WeatherStatus(),
                      SizedBox(
                        height: size.height * 0.15,
                      ),
                      const GraphicCalendar(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
