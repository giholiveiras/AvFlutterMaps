// Importando as classes e os pacotes necessários para o funcionamento do flutter
import 'package:flutter/material.dart';
import 'italia.dart';
import 'eua.dart';
import 'brasil.dart';

// Construindo a classe Principal como um StatefulWidget
class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<Principal> {
  @override
  // Construindo e retornando a interface do widget
  Widget build(BuildContext context) {
    //Retornando como Scaffold que é a base para a página
    return Scaffold(
      // Widget que contém botão de ação
      appBar: AppBar(
        title: Text("APP DE MAPAS"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      // Corpo principal de uma pagina
      body: SingleChildScrollView(
        // Espaçamento interno dapágina
        padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
        // Arrumando os itens em uma coluna vertical
        child: Column(
          // Alinhamento horizontal na coluna ocupando todo o espaço disponível
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            // Texto exibido
            Text(
              "Escolha seu destino",
              // ALinhamento do texto
              textAlign: TextAlign.center,
              // Estilização do texto
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),

            // Alinhamento em coluna
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Widget de botão
                  ElevatedButton(
                      child: const Text("ITALIA"),
                      // função de quando o botão é pressionado
                      onPressed: () {
                        // Navegar para uma nova tela
                        Navigator.push(
                          context,
                          // Define a rota para a nova tela
                          MaterialPageRoute(
                            // Retornando para a página Italia
                              builder: (context) => const Italia() ),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("EUA"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // Retornando para a página Contador
                              builder: (context) => const Eua()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("BRASIL"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // Retornando para a página Usuarios
                              builder: (context) => const Brasil()),
                        );
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
