import 'package:flutter/material.dart';
import 'principal.dart';
import 'italia.dart';
import 'eua.dart';
import 'brasil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Desabilita o banner de debug no canto superior direito
        debugShowCheckedModeBanner: false,
        // Define o título da aplicação
        title: 'Mapas',
        // Definindo a rota inicial da aplicação
        initialRoute: '/',
        // Rotas nomeadas para cada uma das páginas
        routes: {'/': (context) => const Principal (),
          '/primeira': (context) => const Italia (),
          '/segunda': (context) => const Eua (),
          '/terceira': (context) => const Brasil ()
        }
    );
  }
}

