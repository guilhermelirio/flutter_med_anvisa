import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildCardItem extends StatelessWidget {
  final String info;
  final IconData icone;
  final String dado;

  const BuildCardItem({Key key, this.icone, this.dado, this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FaIcon(
          icone,
          color: Colors.black87,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          info,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0XFF666666)),
        ),
        SizedBox(
          width: 6,
        ),
        Flexible(child: Text(dado)),
      ],
    );
  }
}
