import 'package:flutter/material.dart';
import 'package:incentiv_app/pages/instituicoes_page.dart';

class Instituicoes extends StatelessWidget {
  const Instituicoes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: const Text(
              "Instituições",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: const Text(
              "Veja instituições e as diferentes áreas que elas atuam. Você pode contribuir com elas de diversas maneiras!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, InstituicoesPage.routeName);
                },
                child: const Text("Ajudar",
                    style: TextStyle(color: Colors.white))),
          )
        ],
      ),
    );
  }
}
