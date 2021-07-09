import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  String _escolhaUsuario = "";
  bool? _estaSelecionado = false;
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
          CheckboxListTile(
              title: Text("comida brasileira"),
              subtitle: Text("A melhor comida do mundo"),
              activeColor: Colors.red,
              secondary: Icon(Icons.add_box),
              value: _estaSelecionado,
              onChanged: (bool? valor) {
                setState(() {
                  _estaSelecionado = valor;
                });
              }),
          Text("Masculino"),
          Radio(
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha.toString();
                });
                print("Resultado: $escolha");
              }),
          Text("Feminino"),
          Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha.toString();
                });
                print("Resultado: $escolha");
              }),
          ElevatedButton(
            child: Text(
              "Salvar",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              setState(() {});
            },
          ),
          Text("Comida brasileira"),
          Checkbox(
            value: _estaSelecionado,
            onChanged: (bool? valor) {
              setState(() {
                _estaSelecionado = valor;
              });
            },
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
