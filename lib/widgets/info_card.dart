import 'package:flutter/material.dart';
import 'package:incentiv_app/pages/detalhes_page.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.imagem,
    required this.nome,
    required this.descricao,
    required this.endereco,
    required this.horario,
    required this.telefone,
  }) : super(key: key);

  final String imagem;
  final String nome;
  final String descricao;
  final String endereco;
  final String horario;
  final String telefone;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 0,
        color: Colors.white,
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagem,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                nome,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                "Descrição: " +
                    descricao +
                    "\nEndereço: " +
                    endereco +
                    "\nHorário de Funcionamento: " +
                    horario +
                    "\nTelefone: " +
                    telefone,
                style: const TextStyle(color: Colors.amber),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2.0, color: Colors.amber),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, DetalhesPage.routeName);
                  },
                  child: const Text("Detalhes",
                      style: TextStyle(color: Colors.amber))),
            )
          ],
        ),
      ),
    );
  }
}
