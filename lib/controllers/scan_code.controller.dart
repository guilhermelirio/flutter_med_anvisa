import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:medicamentos/models/medicamentos.model.dart';
import '../data/medicamentos_0520.dart';

class ScanCodeController extends GetController {
  String scanBarcode = '-1';
  List<Medicamentos> medicamentos = new List();
  List<Medicamentos> medicamento = new List();
  bool naoEncontrado = false;

  @override
  onInit() {
    for (var dados in todosMedicamentos) {
      medicamentos.add(Medicamentos.fromJson(dados));
    }
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancelar", true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    scanBarcode = barcodeScanRes;
    update();

    for (var i = 0; i < medicamentos.length; i++) {
      medicamento.clear();
      // you may have to check the equality operator
      if (scanBarcode == medicamentos[i].eAN1) {
        print(medicamentos[i].nome);
        medicamento.add(Medicamentos.fromJson(medicamentos[i].toJson()));
        update();
        naoEncontrado = false;
        update();
        break;
      } else {
        naoEncontrado = true;
        update();
      }
    }
    scanBarcode = '-1';
    update();
  }
}
