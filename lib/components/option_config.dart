import 'package:flutter/material.dart';

class OptionConfig extends StatelessWidget {
  OptionConfig({
    Key? key,
    required this.optionName,
    required this.icon,
    required this.function,
  }) : super(key: key);

  String optionName;
  Icon icon;
  Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            Text(
              optionName,
              style: const TextStyle(
                  fontFamily: 'Canada',
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
