import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonScan extends StatelessWidget {
  final Future<void> function;

  const ButtonScan({Key key, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70.0,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                    child: Icon(
                  FontAwesomeIcons.barcode,
                  size: 16,
                  color: Colors.black87,
                )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "ESCANEAR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
            onPressed: () => function),
      ),
    );
  }
}
