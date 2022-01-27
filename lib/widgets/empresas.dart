import 'package:flutter/material.dart';
import 'package:incentiv_app/pages/empresas_page.dart';

class Empresas extends StatelessWidget {
  const Empresas({
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
              "Empresas",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: const Text(
              "Veja palestras, cursos e outras coisas ofertadas por diferentes empresas! Toque para contruibir com elas também!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, EmpresasPage.routeName);
                },
                child: const Text("Ajudar",
                    style: TextStyle(color: Colors.white))),
          )
        ],
      ),
    );
  }
}
