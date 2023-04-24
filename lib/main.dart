import 'package:AgricuTool/pages/change_password.dart';
import 'package:AgricuTool/pages/graphic_page.dart';
import 'package:AgricuTool/pages/home_page.dart';
import 'package:AgricuTool/pages/login_page.dart';
import 'package:AgricuTool/pages/recover_password.dart';
import 'package:AgricuTool/pages/register_page.dart';
import 'package:AgricuTool/pages/register_plant.dart';
import 'package:AgricuTool/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controle',
      theme: ThemeData(
        fontFamily: 'Canada',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontFamily: 'Canada',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
      ).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              // Color.fromARGB(255, 1, 113, 72),
              primary: const Color.fromARGB(255, 243, 246, 249),
              secondary: const Color.fromARGB(255, 2, 166, 7),
            ),
      ),
      //home: const HomePage(),
      routes: {
        '/': (context) => HomePage(),
        '/graphic': (context) => GraphicPage(),
        '/settings': (context) => SettingsPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/register-plant': (context) => RegisterPlant(),
        '/change-password': (context) => ChangePassword(),
        '/recover-password': (context) => RecoverPassword(),
      },
    );
  }
}
