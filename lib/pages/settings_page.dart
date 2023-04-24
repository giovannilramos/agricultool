import 'package:AgricuTool/components/option_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List<String> _plantacao = [
    'Goiaba',
    'Alface',
    'Rúcula',
    'Tomate',
    'Cenoura',
    'Figo',
    'Trigo',
    'Espinafre'
  ];

  String _plantacaoSelecionada = 'Goiaba';
  bool _notification = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    final size = MediaQuery.of(context).size;

    openAbout(BuildContext context) {
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
                  children: [],
                ),
              ),
            ),
          );
        },
      );
    }

    openSend(BuildContext context) {
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
                  children: [],
                ),
              ),
            ),
          );
        },
      );
    }

    openDonation(BuildContext context) {
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
                  children: [],
                ),
              ),
            ),
          );
        },
      );
    }

    openSite() async {
      var url = "https://www.google.com.br";

      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).colorScheme.secondary,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width,
                    ),
                    InputDecorator(
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          fontFamily: 'Canada',
                        ),
                        label: const Text(
                          'Planta mapeada',
                          style: TextStyle(fontFamily: 'Canada'),
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 8),
                      ),
                      child: ButtonTheme(
                        child: DropdownButton<String>(
                          value: _plantacaoSelecionada,
                          isExpanded: true,
                          elevation: 16,
                          dropdownColor: Colors.white,
                          //icon: const Icon(Icons.grass, color: Colors.black),
                          iconSize: 0,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(
                            height: 0,
                            color: Colors.white,
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _plantacaoSelecionada = value!;
                            });
                          },
                          menuMaxHeight: 250,
                          items: _plantacao
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26,
                                        fontFamily: 'Canada',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    OptionConfig(
                      optionName: 'Cadastrar plantação',
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                      function: () =>
                          Navigator.of(context).pushNamed('/register-plant'),
                    ),
                    OptionConfig(
                      optionName: 'Notificações',
                      icon: _notification
                          ? const Icon(
                              Icons.toggle_on,
                              size: 30,
                              color: Colors.green,
                            )
                          : const Icon(
                              Icons.toggle_off,
                              size: 30,
                              color: Colors.red,
                            ),
                      function: () {
                        setState(() {
                          _notification = !_notification;
                        });
                      },
                    ),
                    OptionConfig(
                      optionName: 'Mudar senha',
                      icon: const Icon(
                        Icons.lock_reset,
                        size: 30,
                      ),
                      function: () =>
                          Navigator.of(context).pushNamed('/change-password'),
                    ),
                    OptionConfig(
                      optionName: 'Nosso site',
                      icon: const Icon(
                        Icons.language,
                        size: 30,
                      ),
                      function: () => openSite(),
                    ),
                    OptionConfig(
                      optionName: 'Enviar sujetão',
                      icon: const Icon(
                        Icons.emoji_objects_outlined,
                        size: 30,
                      ),
                      function: () => openSend(context),
                    ),
                    OptionConfig(
                      optionName: 'Contribuir',
                      icon: const Icon(
                        Icons.savings_outlined,
                        size: 30,
                      ),
                      function: () => openDonation(context),
                    ),
                    OptionConfig(
                      optionName: 'Enviar reclamação',
                      icon: const Icon(
                        Icons.sentiment_dissatisfied,
                        size: 30,
                      ),
                      function: () => openSend(context),
                    ),
                    OptionConfig(
                      optionName: 'Sobre o aparelho',
                      icon: const Icon(
                        Icons.help_outline,
                        size: 30,
                      ),
                      function: () => openAbout(context),
                    ),
                    OptionConfig(
                      optionName: 'Sobre o app',
                      icon: const Icon(
                        Icons.info_outline,
                        size: 30,
                      ),
                      function: () => openAbout(context),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: size.width,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              // title: const Text('Você realmente quer sair?'),
                              content: const Text(
                                'Você realmente quer sair?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Canada',
                                  fontSize: 18,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text(
                                    'Não',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Canada',
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.of(context).pushNamed('/login'),
                                  child: const Text(
                                    'Sim',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'Canada',
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          alignment: Alignment.center,
                        ),
                        child: const Text(
                          'SAIR',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Canada',
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('v1.0.0 '),
                        Text('Pythonistas Agrícolas©'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
