import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Cadastro"),
            ),
            body: Row(
                  children: [
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/CadastroCPF');
                                  },
                                  child: const Text("Cadastro CPF"))
                          )),
                      const SizedBox(width: 100),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/CadastroCNPJ');
                            }, child: Text("Cadastro CNPJ")),
                      ))
                    ])
                ));
  }
}
