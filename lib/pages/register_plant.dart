import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPlant extends StatelessWidget {
  const RegisterPlant({Key? key}) : super(key: key);

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
                      Navigator.of(context).pushNamed('/settings');
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
            Column(
              children: [
                Column(
                  children: [],
                ),
              ],
            )
            /////////////////////////////
          ],
        ),
      ),
    );
  }
}
