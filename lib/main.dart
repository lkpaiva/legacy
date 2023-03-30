import 'package:flutter/material.dart';
import 'package:legacy/cpfcnpj.dart';
import 'package:legacy/formcnpj.dart';
import 'package:legacy/formcpf.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      title: 'caminhos',
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyApp(),
        '/Cadastro': (context) => const form(),
        '/CadastroCPF': (context) => const formcpf(),
        '/CadastroCNPJ': (context) => const formcnpj(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tela Inicial"),
        ),
        body: Row(
          children: [
            Expanded(
                child: Align(
                   alignment: Alignment.centerRight,
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Cadastro');
                  },
                    child: Text("Cadastro")),
            )),
            const SizedBox(width: 100),
            Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                   child: ElevatedButton(
                      onPressed: () {}, child: Text("Lista cadastrada")),
            ))
          ],
        ),
      ),
    );
  }
}
