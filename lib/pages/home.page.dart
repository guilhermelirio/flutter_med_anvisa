import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicamentos/controllers/scan_code.controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicamentos/widgets/buildCard.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Medicamentos ANVISA'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: GetBuilder<ScanCodeController>(
              init: ScanCodeController(),
              builder: (_) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: double.infinity,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: _.medicamento.isEmpty
                              ? Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  child: _.naoEncontrado
                                      ? Text(
                                          'Medicamento não encontrado!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Text(
                                          'Clique no botão para ler o código de barras',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ))
                              : Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FaIcon(FontAwesomeIcons.barcode),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'CÓD. BARRAS: ' +
                                              _.medicamento[0].eAN1,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0XFF666666)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    BuildCardItem(
                                      info: 'NOME COMERCIAL: ',
                                      icone: FontAwesomeIcons.medkit,
                                      dado: _.medicamento[0].nome,
                                    ),
                                    Divider(),
                                    BuildCardItem(
                                      info: 'PRINCÍPO ATIVO: ',
                                      icone: FontAwesomeIcons.list,
                                      dado: _.medicamento[0].principioAtivo,
                                    ),
                                    Divider(),
                                    BuildCardItem(
                                      info: 'APRESENTAÇÃO: ',
                                      icone: FontAwesomeIcons.archive,
                                      dado: _.medicamento[0].apresentacao,
                                    ),
                                    Divider(),
                                    BuildCardItem(
                                      info: 'LABORATÓRIO: ',
                                      icone: FontAwesomeIcons.hospital,
                                      dado: _.medicamento[0].laboratorioNome,
                                    ),
                                    Divider(),
                                    BuildCardItem(
                                      info: 'CLASSE TERAPÊUTICA: ',
                                      icone: FontAwesomeIcons.plusSquare,
                                      dado: _.medicamento[0].classeTerapeutica,
                                    ),
                                    Divider(),
                                    BuildCardItem(
                                      info: 'PMC (17%): ',
                                      icone: FontAwesomeIcons.moneyBillAlt,
                                      dado: 'R\$ ' +
                                          _.medicamento[0].precoConsumidor17,
                                    ),
                                    Divider(),
                                    BuildCardItem(
                                      info: 'PMC (20%): ',
                                      icone: FontAwesomeIcons.moneyBillAlt,
                                      dado: 'R\$ ' +
                                          _.medicamento[0].precoConsumidor20,
                                    ),
                                    Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        FaIcon(FontAwesomeIcons.tag),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'TARJA: ' + _.medicamento[0].tarja,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0XFF666666)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 80,
                                      color: _.medicamento[0].tarja ==
                                                  'TARJA VERMELHA(*)' ||
                                              _.medicamento[0].tarja ==
                                                  'TARJA  VERMELHA'
                                          ? Colors.red
                                          : _.medicamento[0].tarja ==
                                                      'TARJA  PRETA' ||
                                                  _.medicamento[0].tarja ==
                                                      'TARJA PRETA(*)'
                                              ? Colors.black
                                              : Colors.white,
                                    )
                                  ],
                                ),
                        ),
                      ),
                    ),
                    Align(
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
                                  color: Colors.white,
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
                            onPressed: () => _.scanBarcodeNormal()),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
