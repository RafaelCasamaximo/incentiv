import 'package:flutter/material.dart';

class PreencherPerfil extends StatelessWidget {
  const PreencherPerfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                "Preencha seu Perfil",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                "Termine de preencher seu perfil! Isso ajudará o aplicativo a guiar você para seus grupos de interesse!",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: OutlinedButton(
                  onPressed: () {},
                  child:
                      Text("Preencher", style: TextStyle(color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
