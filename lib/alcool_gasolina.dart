import 'package:flutter/material.dart';

@override
class CalculaCombustivel extends StatefulWidget {
  _CalculaCombustivelState createState() => _CalculaCombustivelState();
}

class _CalculaCombustivelState extends State<CalculaCombustivel> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  var _resultado = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Image.asset(
                  'images/logo.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Saiba a melhor opção de abastecimento para seu carro',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço do álcool, ex 2.05',
                  labelStyle: TextStyle(color: Colors.blue),
                ),
                controller: _controllerAlcool,
              ),
              TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Preço da gasolina, ex 4.19',
                    labelStyle: TextStyle(color: Colors.blue),
                  ),
                  controller: _controllerGasolina),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    double _gasolina =
                        double.parse(this._controllerGasolina.text);
                    double _alcool = double.parse(this._controllerAlcool.text);
                    double _calculo = _gasolina * 0.70;

                    if (_calculo > _alcool) {
                      setState(() {
                        this._resultado =
                            "Abasteça com Etanol, valor Calculado = ${_calculo.toStringAsFixed(2)}, reais";
                      });
                    } else {
                      setState(() {
                        this._resultado =
                            "Abasteça com Gasolina, valor Calculado = ${_calculo.toStringAsFixed(2)}, reais";
                      });
                    }
                  },
                  child: Text(
                    'Calcular',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  _resultado,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
