import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class formcnpj extends StatefulWidget {
  const formcnpj({Key? key}) : super(key: key);

  @override
  State<formcnpj> createState() => _formcnpjState();
}

class _formcnpjState extends State<formcnpj> {
  final _formKey = GlobalKey<FormState>();
  final dataController = TextEditingController(
      text: UtilData.obterDataDDMMAAAA(DateTime(31, 12, 2023)));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cadastro Pessoa Juridica"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(5.0)),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite sua Razão Social',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value != String) {
                    return 'Digite sua Razão Social';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite seu CNPJ',
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfOuCnpjFormatter(),
                ],
                validator: (value) {
                  if (value == null || value.isEmpty || value != int || value.length != 14) {
                    return 'Digite seu CNPJ';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite sua data de abertura',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite sua data de abertura';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'DDI',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty || value != int) {
                            return 'Digite seu DDI';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'DDD',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty || value != int) {
                            return 'Digite seu DDD';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite seu telefone',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter(),
                        ],
                        validator: (value) {
                          if (value == null || value.isEmpty || value != int) {
                            return 'Digite seu telefone';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite seu E-mail',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite seu Email';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite seu CEP',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CepInputFormatter(),
                        ],
                        validator: (value) {
                          if (value == null || value.isEmpty || value != int) {
                            return 'Digite seu CEP';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite seu Endereço',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite seu Endereço';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite sua UF',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite sua UF';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite sua Cidade',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite sua Cidade';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite seu País',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite seu País';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("Salvando os dados")),
                                  );
                                }
                              },
                              child: const Text("Salvar")))),
                  const SizedBox(width: 100),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Cadastro');
                        },
                        child: Text("Página Anterior")),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
