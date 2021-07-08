import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite um valor"),
              // Serve para habilitar ou não um campo.
              enabled: true,
              // define o numero maximo de caracteres
              maxLength: 10,
              // Esconde o texto digitado(senha)
              obscureText: true,
              // executa uma funcao anonima sempre que é digitado algo
              onChanged: (String texto) {
                print("Valor digitado é: " + texto);
              },
              // Executa uma funcao anonima sempre que é confirmada a opção
              onSubmitted: (String texto) {
                print("valor submetido é: " + texto);
              },
              controller: _textEditingController,
              style: TextStyle(
                  // define o estilo do texto
                  fontSize: 25,
                  color: Colors.amber),
            ),
          ),
          Text("Comida brasileira"),
          Checkbox(
            value: false,
            onChanged: (bool? valor) {},
          ),
          ElevatedButton(
            onPressed: () {
              print("Valor digitado é: " + _textEditingController.text);
            },
            child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}
