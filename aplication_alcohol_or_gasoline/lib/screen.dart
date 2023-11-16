import 'package:flutter/material.dart';

import 'widget.dart';

class AlcoolGasolinaScreen extends StatefulWidget {
  const AlcoolGasolinaScreen({super.key});

  @override
  State<AlcoolGasolinaScreen> createState() => _AlcoolGasolinaScreenState();
}

class _AlcoolGasolinaScreenState extends State<AlcoolGasolinaScreen> {
  TextEditingController controllerAlcool = TextEditingController();
  TextEditingController controllerGasolina = TextEditingController();
  final logo = "lib/images/logo.png";
  final _text = "Sabia qual a melhor opção para abastecimento do seu carro";
  String _resultado = '';
  @override
  Widget build(BuildContext context) {
    void calular() {
      double? precoAlcool = double.tryParse(controllerAlcool.text);
      double? precoGasolina = double.tryParse(controllerGasolina.text);

      if (precoAlcool == null || precoGasolina == null) {
        setState(() {
            _resultado = "Número inválido, digite númeos maior que 0 e utilizando o (.)";
          });
      } else {
        if ((precoAlcool / precoGasolina) >= 0.7) {
          setState(() {
            _resultado = "Melhor abastecer com Gasolina";
          });
        } else {
          setState(() {
            _resultado = "Melhor abastecer com álcool";
          });
        }
      }

      /*if (precoAlcool == null || precoGasolina == null) {
        setState(() {
          resultado = "Número inváliado, digite números maiores que 0";
        });
      } else {
        if ((precoAlcool / precoGasolina) >= 0.7) {
          setState(() {
            resultado = "Melhor abastecer com Gasolina";
          });
        } else {
          setState(() {
            resultado = "Melhor abastecer com álcool";
          });
        }
      }*/
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Entrada de Datos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.withOpacity(0.7),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(29),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(29),
              child: Image.asset(logo),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                _text,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  const TitleField(
                    child: Text(
                      'Preço do Álcool',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  TextFieldContainer(
                    child: TextField(
                      controller: controllerAlcool,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Ex: 1.59',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const TitleField(
                    child: Text(
                      'Preço do Gasolina',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  TextFieldContainer(
                    child: TextField(
                      controller: controllerGasolina,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Ex: 3.59',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  ElevatedButtonContainer(
                    child: GestureDetector(
                      onTap: calular,
                      child: const Text(
                        'Calular',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  TitleField(
                    child: Text(
                      _resultado,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
