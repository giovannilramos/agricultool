import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 5,
                      width: size.width,
                      child: _loading
                          ? LinearProgressIndicator(
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                            )
                          : Container()),
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'assets/images/agricutool.png',
                    height: 210,
                    width: 280,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          label: const Text(
                            'E-MAIL',
                            style: TextStyle(
                              fontFamily: 'Canada',
                              fontSize: 14,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          label: const Text(
                            'Senha',
                            style: TextStyle(
                              fontFamily: 'Canada',
                              fontSize: 14,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            _loading = true;
                          });

                          await Future.delayed(const Duration(seconds: 1),
                              () => Navigator.of(context).pushNamed('/'));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          side: BorderSide(
                            width: 5,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          primary: Colors.white,
                          alignment: Alignment.center,
                        ),
                        child: const Text(
                          'ENTRAR',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Canada',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'OU',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Canada',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/register');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          side: const BorderSide(
                            width: 5,
                            color: Color.fromARGB(180, 16, 147, 177),
                          ),
                          primary: Colors.white,
                          alignment: Alignment.center,
                        ),
                        child: const Text(
                          'Cadastrar',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Canada',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  InkWell(
                    onTap: (() =>
                        Navigator.of(context).pushNamed('/recover-password')),
                    child: const Text(
                      'Equeceu a senha',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
