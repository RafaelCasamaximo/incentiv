import 'package:flutter/material.dart';
import 'package:incentiv_app/pages/grupos_sociais_page.dart';

class GruposSociais extends StatelessWidget {
  const GruposSociais({
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
              "Grupos Sociais",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: const Text(
              "Ajude grupos sociais que realizam trabalhos voluntários próximo de você. Diferentes grupos ofertam diferentes produtos Veja com você pode contribuir com eles!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, GruposSociaisPage.routeName);
                },
                child: const Text("Ajudar",
                    style: TextStyle(color: Colors.white))),
          )
        ],
      ),
    );
  }
}
