import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _register = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _register
            ? SizedBox(
                height: 200,
                width: 200,
                child: Lottie.network(
                    'https://assets2.lottiefiles.com/packages/lf20_atippmse.json'),
              )
            : Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 15, left: 15),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/login');
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          child: Column(
                            children: [
                              BannerCarousel(
                                borderRadius: 15,
                                banners: BannerImages.listBanners,
                                onTap: (id) => print(id),
                                initialPage: 0,
                                animation: true,
                                customizedIndicators:
                                    const IndicatorModel.animation(
                                        width: 20,
                                        height: 5,
                                        spaceBetween: 2,
                                        widthAnimation: 50),
                                height: 150,
                                activeColor:
                                    Theme.of(context).colorScheme.secondary,
                                disableColor: Colors.grey,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 3, top: 15),
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              ///
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              /////
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: SizedBox(
                                  height: 45,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      label: const Text(
                                        'Repetir senha',
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              /////
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: SizedBox(
                                  height: 45,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      label: const Text(
                                        'Endereço de intalação',
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ////
                              ///
                              ///
                              ///
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: SizedBox(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      setState(() {
                                        _register = true;
                                      });

                                      await Future.delayed(
                                          const Duration(milliseconds: 1600),
                                          () => Navigator.of(context).pop());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      side: BorderSide(
                                        width: 5,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class BannerImages {
  static const String banner1 =
      "https://www.datarain.com.br/wp-content/uploads/2020/10/174281-internet-das-coisas-saiba-como-voce-pode-utilizala-na-sua-empresa-1200x565-1.jpg";
  static const String banner2 =
      "https://netzei-cms-s3.s3.amazonaws.com/018658e5afd100a11dc8af855e4c48c97224ed89%2F9735%24plantacao-de-eucalipto-2.jpg";
  static const String banner3 =
      // "https://www.python.org/static/community_logos/python-logo-master-v3-TM-flattened.png";
      "https://community.codenewbie.org/images/9CPSsh1vCZuUwxIsq2PZVkbkjAEL3ditSdEgZ-8n_zE/s:1000:420/mb:500000/ar:1/aHR0cHM6Ly9jb21t/dW5pdHkuY29kZW5l/d2JpZS5vcmcvcmVt/b3RlaW1hZ2VzL2kv/NGRxYjhmcTVqMTh2/ZHdwZmlzdWgucG5n";
  static const String banner4 =
      "https://digitalagro.com.br/wp-content/uploads/2020/10/Manejo-solo-agua-planta.jpg";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}
