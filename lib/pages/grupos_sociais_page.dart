import 'package:flutter/material.dart';
import 'package:incentiv_app/widgets/info_card.dart';

class GruposSociaisPage extends StatefulWidget {
  const GruposSociaisPage({Key? key}) : super(key: key);

  static const String routeName = "/grupos_sociais_list";

  @override
  State<GruposSociaisPage> createState() => _GruposSociaisPageState();
}

class _GruposSociaisPageState extends State<GruposSociaisPage> {
  var imagem = "assets/placeholder.jpg";
  var nome = "Nome Completo";
  var descricao = "";
  var endereco = "";
  var horario = "";
  var telefone = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Grupos Sociais",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: InfoCard(
              imagem: imagem,
              nome: nome,
              descricao: descricao,
              endereco: endereco,
              horario: horario,
              telefone: telefone),
        ),
      ),
    );
  }
}
