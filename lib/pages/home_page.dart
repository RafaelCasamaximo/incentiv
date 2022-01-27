import 'package:flutter/material.dart';
import 'package:incentiv_app/widgets/aviso_beta.dart';
import 'package:incentiv_app/widgets/empresas.dart';
import 'package:incentiv_app/widgets/grupos_sociais.dart';
import 'package:incentiv_app/widgets/instituicoes.dart';
import 'package:incentiv_app/widgets/preencher_perfil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: const Text(
              "Quero ajudar...",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const GruposSociais(),
          const Empresas(),
          const Instituicoes(),
          const AvisoBeta(),
          const PreencherPerfil(),
        ],
      ),
    );
  }
}
